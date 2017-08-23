.class Lorg/telegram/ui/PlusSettingsActivity$3;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 382
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 40
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-nez v35, :cond_1

    .line 1469
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 390
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "EmojiPopupSize"

    const v36, 0x7f070258

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 393
    .local v16, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x3c

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 394
    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 395
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 396
    .local v17, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v36, "emojiPopupSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v35

    if-eqz v35, :cond_2

    const/16 v35, 0x41

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v36

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 397
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 398
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$1;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 396
    :cond_2
    const/16 v35, 0x3c

    goto :goto_1

    .line 411
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 415
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "PhotoQuality"

    const v36, 0x7f07057c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 417
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 418
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 419
    const/16 v35, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 420
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 421
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 422
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$2;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$2;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 436
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 437
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 438
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 439
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showAndroidEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 440
    .local v10, "enabled":Z
    const-string/jumbo v36, "showAndroidEmoji"

    if-nez v10, :cond_6

    const/16 v35, 0x1

    :goto_2
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    if-nez v10, :cond_7

    const/16 v35, 0x1

    :goto_3
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    .line 443
    sget-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-eqz v35, :cond_5

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-eqz v35, :cond_5

    .line 444
    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    .line 445
    const-string/jumbo v35, "drawSingleBigEmoji"

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 447
    :cond_5
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 448
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 449
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_8

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 440
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    const/16 v35, 0x0

    goto :goto_2

    .line 442
    :cond_7
    const/16 v35, 0x0

    goto :goto_3

    .line 449
    .end local p2    # "view":Landroid/view/View;
    :cond_8
    const/16 v35, 0x0

    goto :goto_4

    .line 451
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "enabled":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 452
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 453
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 454
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "useDeviceFont"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 455
    .restart local v10    # "enabled":Z
    const-string/jumbo v36, "useDeviceFont"

    if-nez v10, :cond_a

    const/16 v35, 0x1

    :goto_5
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    if-nez v10, :cond_b

    const/16 v35, 0x1

    :goto_6
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->USE_DEVICE_FONT:Z

    .line 458
    const/16 v35, 0x1

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    .line 459
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$3;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$3;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 468
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 469
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_c

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 455
    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    const/16 v35, 0x0

    goto :goto_5

    .line 457
    :cond_b
    const/16 v35, 0x0

    goto :goto_6

    .line 469
    .end local p2    # "view":Landroid/view/View;
    :cond_c
    const/16 v35, 0x0

    goto :goto_7

    .line 471
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "enabled":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_10

    .line 472
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 473
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableAudioStop"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 474
    .local v20, "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 475
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableAudioStop"

    if-nez v20, :cond_e

    const/16 v35, 0x1

    :goto_8
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 478
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_f

    const/16 v35, 0x1

    :goto_9
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 475
    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    const/16 v35, 0x0

    goto :goto_8

    .line 478
    .end local p2    # "view":Landroid/view/View;
    :cond_f
    const/16 v35, 0x0

    goto :goto_9

    .line 480
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    .line 481
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 482
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "disableMessageClick"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 483
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 484
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "disableMessageClick"

    if-nez v20, :cond_11

    const/16 v35, 0x1

    :goto_a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 487
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_12

    const/16 v35, 0x1

    :goto_b
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 484
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/16 v35, 0x0

    goto :goto_a

    .line 487
    .end local p2    # "view":Landroid/view/View;
    :cond_12
    const/16 v35, 0x0

    goto :goto_b

    .line 489
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_16

    .line 490
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 491
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareReplies"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 492
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 493
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareReplies"

    if-nez v20, :cond_14

    const/16 v35, 0x1

    :goto_c
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 495
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 496
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_15

    const/16 v35, 0x1

    :goto_d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 493
    .restart local p2    # "view":Landroid/view/View;
    :cond_14
    const/16 v35, 0x0

    goto :goto_c

    .line 496
    .end local p2    # "view":Landroid/view/View;
    :cond_15
    const/16 v35, 0x0

    goto :goto_d

    .line 498
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 499
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 500
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareToMenu"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 501
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 502
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareToMenu"

    if-nez v20, :cond_17

    const/16 v35, 0x1

    :goto_e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 504
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 505
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_18

    const/16 v35, 0x1

    :goto_f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 502
    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    const/16 v35, 0x0

    goto :goto_e

    .line 505
    .end local p2    # "view":Landroid/view/View;
    :cond_18
    const/16 v35, 0x0

    goto :goto_f

    .line 507
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_1c

    .line 508
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 509
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "directShareFavsFirst"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 510
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 511
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "directShareFavsFirst"

    if-nez v20, :cond_1a

    const/16 v35, 0x1

    :goto_10
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 513
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 514
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1b

    const/16 v35, 0x1

    :goto_11
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 511
    .restart local p2    # "view":Landroid/view/View;
    :cond_1a
    const/16 v35, 0x0

    goto :goto_10

    .line 514
    .end local p2    # "view":Landroid/view/View;
    :cond_1b
    const/16 v35, 0x0

    goto :goto_11

    .line 516
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_20

    .line 517
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 518
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showEditedMark"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 519
    .restart local v20    # "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 520
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showEditedMark"

    if-nez v20, :cond_1d

    const/16 v35, 0x1

    :goto_12
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    if-nez v20, :cond_1e

    const/16 v35, 0x1

    :goto_13
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowEditedMark:Z

    .line 523
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 524
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v20, :cond_1f

    const/16 v35, 0x1

    :goto_14
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 520
    .restart local p2    # "view":Landroid/view/View;
    :cond_1d
    const/16 v35, 0x0

    goto :goto_12

    .line 522
    :cond_1e
    const/16 v35, 0x0

    goto :goto_13

    .line 524
    .end local p2    # "view":Landroid/view/View;
    :cond_1f
    const/16 v35, 0x0

    goto :goto_14

    .line 526
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v20    # "send":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    .line 527
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 528
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showDateToast"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 529
    .local v21, "show":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 530
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showDateToast"

    if-nez v21, :cond_21

    const/16 v35, 0x1

    :goto_15
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 532
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 533
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v21, :cond_22

    const/16 v35, 0x1

    :goto_16
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 530
    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    const/16 v35, 0x0

    goto :goto_15

    .line 533
    .end local p2    # "view":Landroid/view/View;
    :cond_22
    const/16 v35, 0x0

    goto :goto_16

    .line 535
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v21    # "show":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_27

    .line 536
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 537
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideLeftGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 538
    .local v12, "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_24

    const/16 v35, 0x1

    :goto_17
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    .line 539
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 540
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideLeftGroup"

    if-nez v12, :cond_25

    const/16 v35, 0x1

    :goto_18
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 542
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 543
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_26

    const/16 v35, 0x1

    :goto_19
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 538
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_24
    const/16 v35, 0x0

    goto :goto_17

    .line 540
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_25
    const/16 v35, 0x0

    goto :goto_18

    .line 543
    .end local p2    # "view":Landroid/view/View;
    :cond_26
    const/16 v35, 0x0

    goto :goto_19

    .line 545
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_2b

    .line 546
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 547
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideJoinedGroup"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 548
    .restart local v12    # "hide":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v36

    if-nez v12, :cond_28

    const/16 v35, 0x1

    :goto_1a
    move/from16 v0, v35

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->hideJoinedGroup:Z

    .line 549
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 550
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideJoinedGroup"

    if-nez v12, :cond_29

    const/16 v35, 0x1

    :goto_1b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 551
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 552
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 553
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2a

    const/16 v35, 0x1

    :goto_1c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 548
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_28
    const/16 v35, 0x0

    goto :goto_1a

    .line 550
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_29
    const/16 v35, 0x0

    goto :goto_1b

    .line 553
    .end local p2    # "view":Landroid/view/View;
    :cond_2a
    const/16 v35, 0x0

    goto :goto_1c

    .line 555
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_2e

    .line 556
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 557
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "hideBotKeyboard"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 558
    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 559
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideBotKeyboard"

    if-nez v12, :cond_2c

    const/16 v35, 0x1

    :goto_1d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 560
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 562
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_2d

    const/16 v35, 0x1

    :goto_1e
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 559
    .restart local p2    # "view":Landroid/view/View;
    :cond_2c
    const/16 v35, 0x0

    goto :goto_1d

    .line 562
    .end local p2    # "view":Landroid/view/View;
    :cond_2d
    const/16 v35, 0x0

    goto :goto_1e

    .line 564
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    .line 565
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 566
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v35, :cond_30

    const/16 v35, 0x1

    :goto_1f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    .line 567
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 568
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabs"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-eqz v35, :cond_2f

    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-eqz v35, :cond_2f

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_2f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    .line 577
    :cond_2f
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xa

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 578
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 579
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 566
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_30
    const/16 v35, 0x0

    goto :goto_1f

    .line 581
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_33

    .line 582
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 583
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-nez v35, :cond_32

    const/16 v35, 0x1

    :goto_20
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    .line 584
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 585
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 587
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 588
    .local v9, "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabTitlesMode"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xf

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 591
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 592
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 583
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_32
    const/16 v35, 0x0

    goto :goto_20

    .line 594
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_35

    .line 595
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 596
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-nez v35, :cond_34

    const/16 v35, 0x1

    :goto_21
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    .line 597
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 598
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsShouldExpand"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 599
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xf

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 601
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 602
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 596
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_34
    const/16 v35, 0x0

    goto :goto_21

    .line 604
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_38

    .line 605
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    if-nez v35, :cond_37

    const/16 v35, 0x1

    :goto_22
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    .line 606
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 607
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 608
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotChangeHeaderTitle"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 610
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_36

    .line 611
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 613
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 605
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_37
    const/16 v35, 0x0

    goto :goto_22

    .line 614
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3a

    .line 615
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    if-nez v35, :cond_39

    const/16 v35, 0x1

    :goto_23
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    .line 616
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 617
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 618
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsScrolling"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 619
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 620
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 621
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 615
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_39
    const/16 v35, 0x0

    goto :goto_23

    .line 623
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3c

    .line 624
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 626
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-nez v35, :cond_3b

    const/16 v35, 0x1

    :goto_24
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    .line 627
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 628
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 631
    .restart local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "chatsTabsToBottom"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 632
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 634
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xe

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 635
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 636
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 626
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "editorTheme":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3b
    const/16 v35, 0x0

    goto :goto_24

    .line 638
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_3e

    .line 639
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    if-nez v35, :cond_3d

    const/16 v35, 0x1

    :goto_25
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    .line 640
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 641
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 642
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideSelectedTabIndicator"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 643
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 644
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 645
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 639
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3d
    const/16 v35, 0x0

    goto :goto_25

    .line 648
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_40

    .line 649
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 651
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    if-nez v35, :cond_3f

    const/16 v35, 0x1

    :goto_26
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    .line 652
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 653
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "disableTabsAnimation"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 654
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 655
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xb

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 656
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 657
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 651
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3f
    const/16 v35, 0x0

    goto :goto_26

    .line 659
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_42

    .line 660
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 661
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    if-nez v35, :cond_41

    const/16 v35, 0x1

    :goto_27
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    .line 662
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 663
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "infiniteTabsSwipe"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 664
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 666
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 661
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_41
    const/16 v35, 0x0

    goto :goto_27

    .line 668
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_44

    .line 669
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 670
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    if-nez v35, :cond_43

    const/16 v35, 0x1

    :goto_28
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    .line 671
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 672
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 673
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 674
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 675
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 670
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_43
    const/16 v35, 0x0

    goto :goto_28

    .line 677
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_46

    .line 678
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 679
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    if-nez v35, :cond_45

    const/16 v35, 0x1

    :goto_29
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    .line 680
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 681
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "limitTabsCounters"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 683
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 684
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 679
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_45
    const/16 v35, 0x0

    goto :goto_29

    .line 686
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_49

    .line 687
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 688
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    if-nez v35, :cond_48

    const/16 v35, 0x1

    :goto_2a
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    .line 689
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 690
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showAllInAdminTab"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_47

    .line 693
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 695
    :cond_47
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideAdminTab:Z

    if-nez v35, :cond_0

    .line 696
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 697
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 688
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_48
    const/16 v35, 0x0

    goto :goto_2a

    .line 699
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4b

    .line 700
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 702
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    if-nez v35, :cond_4a

    const/16 v35, 0x1

    :goto_2b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    .line 703
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 704
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountChats"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 706
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 707
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 702
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4a
    const/16 v35, 0x0

    goto :goto_2b

    .line 709
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_4d

    .line 710
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 711
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    if-nez v35, :cond_4c

    const/16 v35, 0x1

    :goto_2c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    .line 712
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 713
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "tabsCountersCountNotMuted"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 715
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 716
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 711
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4c
    const/16 v35, 0x0

    goto :goto_2c

    .line 718
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_50

    .line 719
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 720
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-nez v35, :cond_4f

    const/16 v35, 0x1

    :goto_2d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    .line 721
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 722
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showUsername"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 729
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 730
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_4e

    .line 731
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 733
    :cond_4e
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 720
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_4f
    const/16 v35, 0x0

    goto :goto_2d

    .line 734
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_52

    .line 735
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 736
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusMoveVersionToSettings:Z

    if-nez v35, :cond_51

    const/16 v35, 0x1

    :goto_2e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusMoveVersionToSettings:Z

    .line 737
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 738
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "moveVersionToSettings"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusMoveVersionToSettings:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 740
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 741
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusMoveVersionToSettings:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 736
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_51
    const/16 v35, 0x0

    goto :goto_2e

    .line 744
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_54

    .line 745
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 746
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    if-nez v35, :cond_53

    const/16 v35, 0x1

    :goto_2f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    .line 747
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 748
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "profileEnableGoToMsg"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 750
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 751
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 746
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_53
    const/16 v35, 0x0

    goto :goto_2f

    .line 753
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_57

    .line 754
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 755
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-nez v35, :cond_56

    const/16 v35, 0x1

    :goto_30
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    .line 756
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 757
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideMobile"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 759
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_55

    .line 760
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 762
    :cond_55
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 755
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_56
    const/16 v35, 0x0

    goto :goto_30

    .line 763
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5b

    .line 764
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 765
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "keepOriginalFilename"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 766
    .local v13, "keep":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 767
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "keepOriginalFilename"

    if-nez v13, :cond_58

    const/16 v35, 0x1

    :goto_31
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 769
    if-nez v13, :cond_59

    const/16 v35, 0x1

    :goto_32
    sput-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    .line 770
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 771
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v13, :cond_5a

    const/16 v35, 0x1

    :goto_33
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 767
    .restart local p2    # "view":Landroid/view/View;
    :cond_58
    const/16 v35, 0x0

    goto :goto_31

    .line 769
    :cond_59
    const/16 v35, 0x0

    goto :goto_32

    .line 771
    .end local p2    # "view":Landroid/view/View;
    :cond_5a
    const/16 v35, 0x0

    goto :goto_33

    .line 773
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "keep":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5c

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 777
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 778
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnContactPic"

    const v36, 0x7f07019c

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070600

    .line 780
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f070693

    .line 781
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f070694

    .line 782
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$4;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$4;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 779
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 795
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 797
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5d

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 801
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ClickOnGroupPic"

    const v36, 0x7f07019d

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 803
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "RowGradientDisabled"

    const v38, 0x7f070600

    .line 804
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "ShowPics"

    const v38, 0x7f070693

    .line 805
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "ShowProfile"

    const v38, 0x7f070694

    .line 806
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$5;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$5;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 803
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 819
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 821
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5e

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 825
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 826
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsTextSize"

    const v36, 0x7f0706c9

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 827
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 828
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 829
    const/16 v35, 0x12

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 830
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 831
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 832
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$6;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$6;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 850
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_5f

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 854
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "TabsHeight"

    const v36, 0x7f0706c8

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 856
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 857
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x1e

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 858
    const/16 v35, 0x30

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 860
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 861
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 862
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$7;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$7;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 877
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_60

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    new-instance v36, Lorg/telegram/ui/PlusManageTabsActivity;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/ui/PlusManageTabsActivity;-><init>()V

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 879
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_61

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 883
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 884
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4200(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 885
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$8;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 895
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_62

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 899
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 900
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4400(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 901
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$9;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$9;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 926
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_63

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 930
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 931
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lorg/telegram/ui/PlusSettingsActivity;->access$4600(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 932
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 933
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "showMySettings"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 934
    .local v3, "FLAGS":I
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$10;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/PlusSettingsActivity$3$10;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/content/SharedPreferences;I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 947
    .end local v3    # "FLAGS":I
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_64

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 951
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 952
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-static {v0, v5, v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4800(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;

    .line 953
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$11;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$11;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 962
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_68

    .line 963
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 964
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "invertMessagesOrder"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 965
    .local v19, "scr":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 966
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "invertMessagesOrder"

    if-nez v19, :cond_66

    const/16 v35, 0x1

    :goto_34
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_65

    .line 969
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v19, :cond_67

    const/16 v35, 0x1

    :goto_35
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 971
    :cond_65
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 966
    .restart local p2    # "view":Landroid/view/View;
    :cond_66
    const/16 v35, 0x0

    goto :goto_34

    .line 969
    .end local p2    # "view":Landroid/view/View;
    :cond_67
    const/16 v35, 0x0

    goto :goto_35

    .line 972
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "scr":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_6a

    .line 973
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 974
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    if-nez v35, :cond_69

    const/16 v35, 0x1

    :goto_36
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    .line 975
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 976
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideNotificationsIfPlaying"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 978
    const/16 v35, 0x0

    sput-boolean v35, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    .line 979
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 980
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 974
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_69
    const/16 v35, 0x0

    goto :goto_36

    .line 982
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_6c

    .line 983
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 984
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    if-nez v35, :cond_6b

    const/16 v35, 0x1

    :goto_37
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    .line 985
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 986
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableDirectReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 987
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 988
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 989
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 984
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_6b
    const/16 v35, 0x0

    goto :goto_37

    .line 991
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_71

    .line 992
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 993
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 994
    .local v4, "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 995
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showQuickBar"

    if-nez v4, :cond_6e

    const/16 v35, 0x1

    :goto_38
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 996
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 997
    if-nez v4, :cond_6f

    const/16 v35, 0x1

    :goto_39
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 998
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_6d

    .line 999
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_70

    const/16 v35, 0x1

    :goto_3a
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1001
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 995
    .restart local p2    # "view":Landroid/view/View;
    :cond_6e
    const/16 v35, 0x0

    goto :goto_38

    .line 997
    :cond_6f
    const/16 v35, 0x0

    goto :goto_39

    .line 999
    .end local p2    # "view":Landroid/view/View;
    :cond_70
    const/16 v35, 0x0

    goto :goto_3a

    .line 1004
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_74

    .line 1005
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1006
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    if-nez v35, :cond_73

    const/16 v35, 0x1

    :goto_3b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    .line 1007
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1008
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "photoViewerHideStatusBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1009
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1010
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_72

    .line 1011
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1013
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1006
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_73
    const/16 v35, 0x0

    goto :goto_3b

    .line 1016
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_78

    .line 1017
    sget-boolean v35, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-nez v35, :cond_75

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v35, v0

    if-eqz v35, :cond_76

    :cond_75
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-nez v35, :cond_76

    .line 1018
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$12;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$12;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1028
    :cond_76
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1029
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    if-nez v35, :cond_77

    const/16 v35, 0x1

    :goto_3c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    .line 1030
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1031
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "drawSingleBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1033
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v35

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    .line 1034
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v36, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1035
    .local v15, "mainEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "allowBigEmoji"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1036
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1038
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1029
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "mainEditor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_77
    const/16 v35, 0x0

    goto :goto_3c

    .line 1041
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_7a

    .line 1042
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1043
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    if-nez v35, :cond_79

    const/16 v35, 0x1

    :goto_3d
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    .line 1044
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1045
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "enableMarkdown"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1046
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1047
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1048
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1043
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_79
    const/16 v35, 0x0

    goto :goto_3d

    .line 1050
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_7c

    .line 1051
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1052
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUserBio:Z

    if-nez v35, :cond_7b

    const/16 v35, 0x1

    :goto_3e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUserBio:Z

    .line 1053
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1054
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showUserBio"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowUserBio:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1055
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1056
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1057
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowUserBio:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1052
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7b
    const/16 v35, 0x0

    goto :goto_3e

    .line 1059
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_7f

    .line 1060
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1061
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    if-nez v35, :cond_7e

    const/16 v35, 0x1

    :goto_3f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    .line 1062
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1063
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "doNotHideStickersTab"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1064
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1065
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_7d

    .line 1066
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1068
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1061
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_7e
    const/16 v35, 0x0

    goto :goto_3f

    .line 1071
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_82

    .line 1072
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1073
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    if-nez v35, :cond_81

    const/16 v35, 0x1

    :goto_40
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    .line 1074
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1075
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "hideInstantCamera"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1076
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1077
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_80

    .line 1078
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1080
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1073
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_81
    const/16 v35, 0x0

    goto :goto_40

    .line 1083
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_85

    .line 1084
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1085
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    if-nez v35, :cond_84

    const/16 v35, 0x1

    :goto_41
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    .line 1086
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1087
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "plusSwipeToReply"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1088
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1089
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_83

    .line 1090
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1092
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 1085
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_84
    const/16 v35, 0x0

    goto :goto_41

    .line 1095
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_89

    .line 1096
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1097
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1098
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1099
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "verticalQuickBar"

    if-nez v4, :cond_86

    const/16 v35, 0x1

    :goto_42
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1100
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1101
    if-nez v4, :cond_87

    const/16 v35, 0x1

    :goto_43
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1102
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1103
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_88

    const/16 v35, 0x1

    :goto_44
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1099
    .restart local p2    # "view":Landroid/view/View;
    :cond_86
    const/16 v35, 0x0

    goto :goto_42

    .line 1101
    :cond_87
    const/16 v35, 0x0

    goto :goto_43

    .line 1103
    .end local p2    # "view":Landroid/view/View;
    :cond_88
    const/16 v35, 0x0

    goto :goto_44

    .line 1105
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_8d

    .line 1106
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1107
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    .line 1108
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1109
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "alwaysBackToMain"

    if-nez v4, :cond_8a

    const/16 v35, 0x1

    :goto_45
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1110
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1111
    if-nez v4, :cond_8b

    const/16 v35, 0x1

    :goto_46
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    .line 1112
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1113
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_8c

    const/16 v35, 0x1

    :goto_47
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1109
    .restart local p2    # "view":Landroid/view/View;
    :cond_8a
    const/16 v35, 0x0

    goto :goto_45

    .line 1111
    :cond_8b
    const/16 v35, 0x0

    goto :goto_46

    .line 1113
    .end local p2    # "view":Landroid/view/View;
    :cond_8c
    const/16 v35, 0x0

    goto :goto_47

    .line 1115
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_91

    .line 1116
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1117
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1118
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1119
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "doNotCloseQuickBar"

    if-nez v4, :cond_8e

    const/16 v35, 0x1

    :goto_48
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1120
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1121
    if-nez v4, :cond_8f

    const/16 v35, 0x1

    :goto_49
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1122
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1123
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_90

    const/16 v35, 0x1

    :goto_4a
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1119
    .restart local p2    # "view":Landroid/view/View;
    :cond_8e
    const/16 v35, 0x0

    goto :goto_48

    .line 1121
    :cond_8f
    const/16 v35, 0x0

    goto :goto_49

    .line 1123
    .end local p2    # "view":Landroid/view/View;
    :cond_90
    const/16 v35, 0x0

    goto :goto_4a

    .line 1125
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_95

    .line 1126
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1127
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1128
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1129
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "hideQuickBarOnScroll"

    if-nez v4, :cond_92

    const/16 v35, 0x1

    :goto_4b
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1130
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1131
    if-nez v4, :cond_93

    const/16 v35, 0x1

    :goto_4c
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1132
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1133
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_94

    const/16 v35, 0x1

    :goto_4d
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1129
    .restart local p2    # "view":Landroid/view/View;
    :cond_92
    const/16 v35, 0x0

    goto :goto_4b

    .line 1131
    :cond_93
    const/16 v35, 0x0

    goto :goto_4c

    .line 1133
    .end local p2    # "view":Landroid/view/View;
    :cond_94
    const/16 v35, 0x0

    goto :goto_4d

    .line 1135
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_99

    .line 1136
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1137
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1138
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1139
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "centerQuickBarBtn"

    if-nez v4, :cond_96

    const/16 v35, 0x1

    :goto_4e
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1141
    if-nez v4, :cond_97

    const/16 v35, 0x1

    :goto_4f
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1142
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1143
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_98

    const/16 v35, 0x1

    :goto_50
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1139
    .restart local p2    # "view":Landroid/view/View;
    :cond_96
    const/16 v35, 0x0

    goto :goto_4e

    .line 1141
    :cond_97
    const/16 v35, 0x0

    goto :goto_4f

    .line 1143
    .end local p2    # "view":Landroid/view/View;
    :cond_98
    const/16 v35, 0x0

    goto :goto_50

    .line 1145
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_9d

    .line 1146
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1147
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    .line 1148
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1149
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "quickBarShowMembers"

    if-nez v4, :cond_9a

    const/16 v35, 0x1

    :goto_51
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1150
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1151
    if-nez v4, :cond_9b

    const/16 v35, 0x1

    :goto_52
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    .line 1152
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1153
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_9c

    const/16 v35, 0x1

    :goto_53
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1149
    .restart local p2    # "view":Landroid/view/View;
    :cond_9a
    const/16 v35, 0x0

    goto :goto_51

    .line 1151
    :cond_9b
    const/16 v35, 0x0

    goto :goto_52

    .line 1153
    .end local p2    # "view":Landroid/view/View;
    :cond_9c
    const/16 v35, 0x0

    goto :goto_53

    .line 1155
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a0

    .line 1156
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1157
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "searchOnTwitter"

    const/16 v36, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1158
    .restart local v12    # "hide":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1159
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "searchOnTwitter"

    if-nez v12, :cond_9e

    const/16 v35, 0x1

    :goto_54
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1161
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1162
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v12, :cond_9f

    const/16 v35, 0x1

    :goto_55
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1159
    .restart local p2    # "view":Landroid/view/View;
    :cond_9e
    const/16 v35, 0x0

    goto :goto_54

    .line 1162
    .end local p2    # "view":Landroid/view/View;
    :cond_9f
    const/16 v35, 0x0

    goto :goto_55

    .line 1164
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "hide":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a2

    .line 1165
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1167
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-nez v35, :cond_a1

    const/16 v35, 0x1

    :goto_56
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    .line 1168
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1169
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v35, "showPhotoQualityBar"

    sget-boolean v36, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1171
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1172
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1167
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_a1
    const/16 v35, 0x0

    goto :goto_56

    .line 1174
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a6

    .line 1175
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1176
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    .line 1177
    .restart local v4    # "bol":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1178
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "saveToCloudQuote"

    if-nez v4, :cond_a3

    const/16 v35, 0x1

    :goto_57
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1179
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1180
    if-nez v4, :cond_a4

    const/16 v35, 0x1

    :goto_58
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    .line 1181
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1182
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v4, :cond_a5

    const/16 v35, 0x1

    :goto_59
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1178
    .restart local p2    # "view":Landroid/view/View;
    :cond_a3
    const/16 v35, 0x0

    goto :goto_57

    .line 1180
    :cond_a4
    const/16 v35, 0x0

    goto :goto_58

    .line 1182
    .end local p2    # "view":Landroid/view/View;
    :cond_a5
    const/16 v35, 0x0

    goto :goto_59

    .line 1184
    .end local v4    # "bol":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a7

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 1186
    .local v14, "li":Landroid/view/LayoutInflater;
    const v35, 0x7f030007

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1187
    .local v18, "promptsView":Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1188
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1189
    const v35, 0x7f0c004a

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    .line 1191
    .local v23, "userInput":Landroid/widget/EditText;
    const-string/jumbo v35, "EnterName"

    const v36, 0x7f07027a

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1192
    const v35, -0x686869

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1193
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "theme"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1194
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v35, "themeColor"

    const v36, -0xab8a62

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1195
    .local v6, "defColor":I
    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v35

    const-string/jumbo v36, "dialogColor"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    sget-object v37, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1196
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1198
    const-string/jumbo v35, "SaveSettings"

    const v36, 0x7f07060b

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1199
    const-string/jumbo v35, "OK"

    const v36, 0x7f0704f5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$13;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$13;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/widget/EditText;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1225
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1227
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "defColor":I
    .end local v14    # "li":Landroid/view/LayoutInflater;
    .end local v18    # "promptsView":Landroid/view/View;
    .end local v22    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v23    # "userInput":Landroid/widget/EditText;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a8

    .line 1228
    new-instance v11, Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct {v11}, Lorg/telegram/ui/DocumentSelectActivity;-><init>()V

    .line 1229
    .local v11, "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    const-string/jumbo v35, ".xml"

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    .line 1230
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, ".db"

    aput-object v37, v35, v36

    move-object/from16 v0, v35

    iput-object v0, v11, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    .line 1231
    new-instance v35, Lorg/telegram/ui/PlusSettingsActivity$3$14;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$14;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Lorg/telegram/ui/DocumentSelectActivity;->setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Lorg/telegram/ui/PlusSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1241
    .end local v11    # "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_a9

    .line 1242
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1243
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "AreYouSure"

    const v36, 0x7f07008e

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1244
    const-string/jumbo v35, "ResetSettings"

    const v36, 0x7f0705e1

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1245
    const-string/jumbo v35, "OK"

    const v36, 0x7f0704f5

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$15;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$15;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1278
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1280
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_ad

    .line 1281
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1282
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    .line 1283
    .local v7, "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1284
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showTypingToast"

    if-nez v7, :cond_aa

    const/16 v35, 0x1

    :goto_5a
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1286
    if-nez v7, :cond_ab

    const/16 v35, 0x1

    :goto_5b
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    .line 1287
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1288
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_ac

    const/16 v35, 0x1

    :goto_5c
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1284
    .restart local p2    # "view":Landroid/view/View;
    :cond_aa
    const/16 v35, 0x0

    goto :goto_5a

    .line 1286
    :cond_ab
    const/16 v35, 0x0

    goto :goto_5b

    .line 1288
    .end local p2    # "view":Landroid/view/View;
    :cond_ac
    const/16 v35, 0x0

    goto :goto_5c

    .line 1290
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b1

    .line 1291
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1292
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    .line 1293
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1294
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOnlineToast"

    if-nez v7, :cond_ae

    const/16 v35, 0x1

    :goto_5d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1295
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1296
    if-nez v7, :cond_af

    const/16 v35, 0x1

    :goto_5e
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    .line 1297
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1298
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b0

    const/16 v35, 0x1

    :goto_5f
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1294
    .restart local p2    # "view":Landroid/view/View;
    :cond_ae
    const/16 v35, 0x0

    goto :goto_5d

    .line 1296
    :cond_af
    const/16 v35, 0x0

    goto :goto_5e

    .line 1298
    .end local p2    # "view":Landroid/view/View;
    :cond_b0
    const/16 v35, 0x0

    goto :goto_5f

    .line 1300
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b5

    .line 1301
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1302
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    .line 1303
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1304
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOnlyIfContactFav"

    if-nez v7, :cond_b2

    const/16 v35, 0x1

    :goto_60
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1306
    if-nez v7, :cond_b3

    const/16 v35, 0x1

    :goto_61
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    .line 1307
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1308
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b4

    const/16 v35, 0x1

    :goto_62
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1304
    .restart local p2    # "view":Landroid/view/View;
    :cond_b2
    const/16 v35, 0x0

    goto :goto_60

    .line 1306
    :cond_b3
    const/16 v35, 0x0

    goto :goto_61

    .line 1308
    .end local p2    # "view":Landroid/view/View;
    :cond_b4
    const/16 v35, 0x0

    goto :goto_62

    .line 1310
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_b9

    .line 1311
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1312
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    .line 1313
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1314
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "showOfflineToast"

    if-nez v7, :cond_b6

    const/16 v35, 0x1

    :goto_63
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1315
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1316
    if-nez v7, :cond_b7

    const/16 v35, 0x1

    :goto_64
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    .line 1317
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1318
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_b8

    const/16 v35, 0x1

    :goto_65
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 1314
    .restart local p2    # "view":Landroid/view/View;
    :cond_b6
    const/16 v35, 0x0

    goto :goto_63

    .line 1316
    :cond_b7
    const/16 v35, 0x0

    goto :goto_64

    .line 1318
    .end local p2    # "view":Landroid/view/View;
    :cond_b8
    const/16 v35, 0x0

    goto :goto_65

    .line 1320
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_ba

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1324
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1325
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationSize"

    const v36, 0x7f0706f2

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1326
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1327
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1328
    const/16 v35, 0x14

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1329
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1330
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1331
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$16;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$16;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1347
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_bb

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1351
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1352
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPadding"

    const v36, 0x7f0706f0

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1353
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1354
    .restart local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v35, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1355
    const/16 v35, 0xc8

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1356
    sget v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1357
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1358
    const-string/jumbo v35, "Done"

    const v36, 0x7f070234

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$17;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PlusSettingsActivity$3$17;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1374
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_c0

    .line 1375
    sget-object v35, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v36, "plusconfig"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1376
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    .line 1377
    .restart local v7    # "disable":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1378
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v36, "toastNotificationToBottom"

    if-nez v7, :cond_bd

    const/16 v35, 0x1

    :goto_66
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1379
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1380
    if-nez v7, :cond_be

    const/16 v35, 0x1

    :goto_67
    sput-boolean v35, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    .line 1381
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v35, v0

    if-eqz v35, :cond_bc

    .line 1382
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v7, :cond_bf

    const/16 v35, 0x1

    :goto_68
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1385
    :cond_bc
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v35

    sget v36, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1378
    .restart local p2    # "view":Landroid/view/View;
    :cond_bd
    const/16 v35, 0x0

    goto :goto_66

    .line 1380
    :cond_be
    const/16 v35, 0x0

    goto :goto_67

    .line 1382
    .end local p2    # "view":Landroid/view/View;
    :cond_bf
    const/16 v35, 0x0

    goto :goto_68

    .line 1386
    .end local v7    # "disable":Z
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_c1

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    if-eqz v35, :cond_0

    .line 1390
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1391
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "ToastNotificationPosition"

    const v36, 0x7f0706f1

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1392
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "Left"

    const v38, 0x7f0703da

    .line 1393
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "Center"

    const v38, 0x7f07010d

    .line 1394
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "Right"

    const v38, 0x7f0705fa

    .line 1395
    invoke-static/range {v37 .. v38}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$18;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$18;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    .line 1392
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1411
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1413
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->access$8400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v35

    move/from16 v0, p3

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    .line 1414
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1415
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v35, "Chats to load"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1416
    const/16 v24, 0x32

    .line 1417
    .local v24, "v0":I
    const/16 v25, 0x64

    .line 1418
    .local v25, "v1":I
    const/16 v27, 0xc8

    .line 1419
    .local v27, "v2":I
    const/16 v28, 0x12c

    .line 1420
    .local v28, "v3":I
    const/16 v29, 0x190

    .line 1421
    .local v29, "v4":I
    const/16 v30, 0x1f4

    .line 1422
    .local v30, "v5":I
    const/16 v31, 0x2ee

    .line 1423
    .local v31, "v6":I
    const/16 v32, 0x3e8

    .line 1424
    .local v32, "v7":I
    const/16 v33, 0x5dc

    .line 1425
    .local v33, "v8":I
    const/16 v34, 0x7d0

    .line 1426
    .local v34, "v9":I
    const v26, 0xf4240

    .line 1427
    .local v26, "v10":I
    const/16 v35, 0xb

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "50"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, "100"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, "200"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string/jumbo v37, "300"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string/jumbo v37, "400"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string/jumbo v37, "500"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string/jumbo v37, "750"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string/jumbo v37, "1000"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string/jumbo v37, "1500"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string/jumbo v37, "2000"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string/jumbo v37, "All"

    aput-object v37, v35, v36

    new-instance v36, Lorg/telegram/ui/PlusSettingsActivity$3$19;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PlusSettingsActivity$3$19;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1466
    const-string/jumbo v35, "Cancel"

    const v36, 0x7f070105

    invoke-static/range {v35 .. v36}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v35, v0

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
