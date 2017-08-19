.class Lorg/telegram/ui/LaunchActivity$4;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 386
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    invoke-static {v11}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getId(I)I

    move-result v3

    .line 387
    .local v3, "id":I
    if-nez p2, :cond_1

    .line 388
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v11, "user_id"

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v12, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 391
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 515
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    .line 393
    const-string/jumbo v12, "chat_create"

    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v11}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v13, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v12, v11}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 396
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v12}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 397
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 398
    :cond_2
    const/4 v11, 0x3

    if-ne v3, v11, :cond_3

    .line 399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 400
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v11, "onlyUsers"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    const-string/jumbo v11, "destroyAfterSelect"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    const-string/jumbo v11, "createSecretChat"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    const-string/jumbo v11, "allowBots"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v12, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 405
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 406
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_3
    const/4 v11, 0x4

    if-ne v3, v11, :cond_5

    .line 407
    const-string/jumbo v12, "broadcast_create"

    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v11}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v13, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v12, v11}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 410
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 411
    .local v10, "preferences":Landroid/content/SharedPreferences;
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v11, :cond_4

    const-string/jumbo v11, "channel_intro"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 412
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 413
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v11, "step"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v12, v1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 419
    .end local v1    # "args":Landroid/os/Bundle;
    :goto_1
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 416
    :cond_4
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {v12}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 417
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v12, "channel_intro"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 420
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->contactsRow:I
    invoke-static {v11}, Lorg/telegram/ui/LaunchActivity;->access$800(Lorg/telegram/ui/LaunchActivity;)I

    move-result v11

    if-ne v3, v11, :cond_6

    .line 421
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ContactsActivity;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 422
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 423
    :cond_6
    const/16 v11, 0x11

    if-ne v3, v11, :cond_8

    .line 424
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v11, :cond_7

    .line 436
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v12, 0x1

    # invokes: Lorg/telegram/ui/LaunchActivity;->showLanguageAlert(Z)V
    invoke-static {v11, v12}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;Z)V

    goto/16 :goto_0

    .line 439
    :cond_7
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.SEND"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string/jumbo v11, "android.intent.extra.TEXT"

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ContactsController;->getInviteText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v12, "InviteFriends"

    const v13, 0x7f07038f

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v12

    const/16 v13, 0x1f4

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 443
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 448
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v11, 0x9

    if-ne v3, v11, :cond_9

    .line 449
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v12}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 450
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 451
    :cond_9
    const/16 v11, 0x10

    if-ne v3, v11, :cond_a

    .line 452
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v12, "TelegramFaqUrl"

    const v13, 0x7f0706cf

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 453
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 454
    :cond_a
    const/16 v11, 0xa

    if-ne v3, v11, :cond_b

    .line 455
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v12}, Lorg/telegram/ui/CallLogActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 456
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 459
    :cond_b
    const/4 v11, 0x7

    if-ne v3, v11, :cond_d

    .line 461
    :try_start_1
    const-string/jumbo v8, "es.rafalense.themes"

    .line 463
    .local v8, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/LaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 464
    .restart local v5    # "intent":Landroid/content/Intent;
    if-nez v5, :cond_c

    .line 465
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.action.VIEW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "market://details?id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 469
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/16 v12, 0x1f7

    invoke-virtual {v11, v5, v12}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_3
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 470
    :catch_1
    move-exception v2

    .line 471
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    const-string/jumbo v12, "https://play.google.com/store/apps/details?id=es.rafalense.themes"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 472
    .local v4, "in":Landroid/content/Intent;
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/16 v12, 0x1f7

    invoke-virtual {v11, v4, v12}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 473
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 476
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Landroid/content/Intent;
    :cond_d
    const/16 v11, 0x8

    if-ne v3, v11, :cond_e

    .line 477
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/ThemingActivity;

    invoke-direct {v12}, Lorg/telegram/ui/ThemingActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 478
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 479
    :cond_e
    const/16 v11, 0xb

    if-ne v3, v11, :cond_f

    .line 480
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {v12}, Lorg/telegram/ui/PlusSettingsActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 481
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 482
    :cond_f
    const/16 v11, 0xc

    if-ne v3, v11, :cond_10

    .line 484
    :try_start_2
    const-string/jumbo v11, "ChannelLink"

    const v12, 0x7f07013b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "link":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v13, 0x1f8

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 489
    .end local v7    # "link":Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 486
    :catch_2
    move-exception v2

    .line 487
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 490
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_10
    const/16 v11, 0xd

    if-ne v3, v11, :cond_13

    .line 492
    :try_start_3
    const-string/jumbo v7, "http://telegra.ph/Poblagodarit-avtora-programmy-06-19"

    .line 493
    .restart local v7    # "link":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "lg":Ljava/lang/String;
    const-string/jumbo v11, "es"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string/jumbo v11, "gl"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string/jumbo v11, "ca"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 495
    :cond_11
    const-string/jumbo v7, "https://plus.google.com/u/0/communities/111922519175849600270"

    .line 497
    :cond_12
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v13, 0x1f5

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 501
    .end local v6    # "lg":Ljava/lang/String;
    .end local v7    # "link":Ljava/lang/String;
    :goto_5
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 498
    :catch_3
    move-exception v2

    .line 499
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_13
    const/16 v11, 0xf

    if-ne v3, v11, :cond_14

    .line 504
    :try_start_4
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    const-string/jumbo v12, "https://play.google.com/store/apps/details?id=org.telegram.plus"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 505
    .local v9, "pickIntent":Landroid/content/Intent;
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/16 v12, 0x1f6

    invoke-virtual {v11, v9, v12}, Lorg/telegram/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 509
    .end local v9    # "pickIntent":Landroid/content/Intent;
    :goto_6
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0

    .line 506
    :catch_4
    move-exception v2

    .line 507
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v11, 0xe

    if-ne v3, v11, :cond_0

    .line 511
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v12, Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;-><init>()V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 512
    iget-object v11, p0, Lorg/telegram/ui/LaunchActivity$4;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v11, v11, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_0
.end method
