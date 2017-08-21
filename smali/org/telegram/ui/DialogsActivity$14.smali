.class Lorg/telegram/ui/DialogsActivity$14;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showTabLongClick(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$position:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1378
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$14;->val$type:I

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$14;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1381
    if-ne p2, v2, :cond_1

    .line 1382
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$14;->val$type:I

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;I)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1384
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$14;->val$position:I

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;I)V

    goto :goto_0

    .line 1385
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 1386
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_0

    .line 1387
    :cond_3
    if-nez p2, :cond_4

    .line 1388
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct {v3}, Lorg/telegram/ui/PlusManageTabsActivity;-><init>()V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 1389
    :cond_4
    iget v4, p0, Lorg/telegram/ui/DialogsActivity$14;->val$type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    if-ne p2, v6, :cond_6

    .line 1390
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    if-nez v4, :cond_5

    :goto_1
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 1392
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1393
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1394
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "showAllInAdminTab"

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_5
    move v2, v3

    .line 1390
    goto :goto_1

    .line 1396
    :cond_6
    iget v4, p0, Lorg/telegram/ui/DialogsActivity$14;->val$type:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    if-ne p2, v6, :cond_0

    .line 1397
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowUnmutedFirst:Z

    if-nez v4, :cond_7

    :goto_2
    sput-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowUnmutedFirst:Z

    .line 1398
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 1399
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1400
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1401
    .restart local v1    # "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1402
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "showUnmutedFirst"

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusShowUnmutedFirst:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_7
    move v2, v3

    .line 1397
    goto :goto_2
.end method
