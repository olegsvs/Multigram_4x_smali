.class Lorg/telegram/ui/PasscodeActivity$7;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 392
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 302
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_2

    .line 303
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 304
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_7

    move-object v2, p1

    .line 305
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 306
    .local v2, "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 307
    const-string/jumbo v9, ""

    sput-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 308
    sput-boolean v8, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 309
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 310
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    .line 311
    .local v4, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 312
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 313
    .local v3, "child":Landroid/view/View;
    instance-of v9, v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v9, :cond_4

    move-object v6, v3

    .line 314
    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 315
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const-string/jumbo v9, "windowBackgroundWhiteGrayText7"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 319
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_3
    sget-object v9, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    :goto_2
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 320
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    .restart local v3    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "child":Landroid/view/View;
    :cond_5
    move v7, v8

    .line 319
    goto :goto_2

    .line 322
    .end local v0    # "a":I
    .end local v4    # "count":I
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v9, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 324
    .end local v2    # "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_d

    .line 325
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 328
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v9, "AutoLock"

    const v10, 0x7f0700c0

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 330
    new-instance v5, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 331
    .local v5, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 332
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 333
    sget v9, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v9, :cond_9

    .line 334
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 344
    :cond_8
    :goto_3
    new-instance v7, Lorg/telegram/ui/PasscodeActivity$7$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PasscodeActivity$7$1;-><init>(Lorg/telegram/ui/PasscodeActivity$7;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 361
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 362
    const-string/jumbo v7, "Done"

    const v8, 0x7f070234

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/PasscodeActivity$7$2;

    invoke-direct {v8, p0, v5, p2}, Lorg/telegram/ui/PasscodeActivity$7$2;-><init>(Lorg/telegram/ui/PasscodeActivity$7;Lorg/telegram/ui/Components/NumberPicker;I)V

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 381
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PasscodeActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 335
    :cond_9
    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_a

    .line 336
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 337
    :cond_a
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_b

    .line 338
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 339
    :cond_b
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0xe10

    if-ne v7, v8, :cond_c

    .line 340
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 341
    :cond_c
    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v8, 0x4650

    if-ne v7, v8, :cond_8

    .line 342
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_3

    .line 382
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_f

    .line 383
    sget-boolean v9, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    if-nez v9, :cond_e

    :goto_4
    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 384
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 385
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    move v7, v8

    .line 383
    goto :goto_4

    .line 386
    :cond_f
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity$7;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v9}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v9

    if-ne p2, v9, :cond_0

    .line 387
    sget-boolean v9, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v9, :cond_10

    :goto_5
    sput-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 388
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 389
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 390
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .restart local p1    # "view":Landroid/view/View;
    :cond_10
    move v7, v8

    .line 387
    goto :goto_5
.end method
