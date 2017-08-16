.class Lorg/telegram/ui/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 405
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 29
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    if-nez v25, :cond_1

    .line 661
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 412
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v25, "TextSize"

    const v26, 0x7f0706d6

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 414
    new-instance v16, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 415
    .local v16, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v25, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 416
    const/16 v25, 0x1e

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 417
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 418
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 419
    const-string/jumbo v25, "Done"

    const v26, 0x7f070234

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/SettingsActivity$5$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/SettingsActivity$5$1;-><init>(Lorg/telegram/ui/SettingsActivity$5;Lorg/telegram/ui/Components/NumberPicker;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 439
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v16    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 440
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "mainconfig"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 441
    .local v17, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v25, "view_animations"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 442
    .local v5, "animations":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 443
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v26, "view_animations"

    if-nez v5, :cond_3

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 446
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v5, :cond_4

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 443
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    const/16 v25, 0x0

    goto :goto_1

    .line 446
    .end local p1    # "view":Landroid/view/View;
    :cond_4
    const/16 v25, 0x0

    goto :goto_2

    .line 448
    .end local v5    # "animations":Z
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 450
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 456
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 457
    .local v14, "message":Landroid/widget/TextView;
    new-instance v21, Landroid/text/SpannableString;

    const-string/jumbo v25, "AskAQuestionInfo"

    const v26, 0x7f0700a4

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "\n"

    const-string/jumbo v27, "<br>"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 458
    .local v21, "spanned":Landroid/text/Spannable;
    const/16 v25, 0x0

    invoke-interface/range {v21 .. v21}, Landroid/text/Spannable;->length()I

    move-result v26

    const-class v27, Landroid/text/style/URLSpan;

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/text/style/URLSpan;

    .line 459
    .local v22, "spans":[Landroid/text/style/URLSpan;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    .line 460
    aget-object v19, v22, v4

    .line 461
    .local v19, "span":Landroid/text/style/URLSpan;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 462
    .local v23, "start":I
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 463
    .local v11, "end":I
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 464
    new-instance v20, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual/range {v19 .. v19}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 465
    .end local v19    # "span":Landroid/text/style/URLSpan;
    .local v20, "span":Landroid/text/style/URLSpan;
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 459
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 467
    .end local v11    # "end":I
    .end local v20    # "span":Landroid/text/style/URLSpan;
    .end local v23    # "start":I
    :cond_8
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const/16 v25, 0x1

    const/high16 v26, 0x41800000    # 16.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    const-string/jumbo v25, "dialogTextLink"

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 470
    const-string/jumbo v25, "dialogLinkSelection"

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 471
    const/high16 v25, 0x41b80000    # 23.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    const/high16 v27, 0x41b80000    # 23.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 472
    new-instance v25, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/SettingsActivity$1;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 473
    const-string/jumbo v25, "dialogTextBlack"

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v6, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 477
    const-string/jumbo v25, "AskAQuestion"

    const v26, 0x7f0700a3

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 478
    const-string/jumbo v25, "AskButton"

    const v26, 0x7f0700a5

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/SettingsActivity$5$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$5$2;-><init>(Lorg/telegram/ui/SettingsActivity$5;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 484
    const-string/jumbo v25, "Cancel"

    const v26, 0x7f070105

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 486
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v14    # "message":Landroid/widget/TextView;
    .end local v21    # "spanned":Landroid/text/Spannable;
    .end local v22    # "spans":[Landroid/text/style/URLSpan;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # invokes: Lorg/telegram/ui/SettingsActivity;->sendLogs()V
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1200(Lorg/telegram/ui/SettingsActivity;)V

    goto/16 :goto_0

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 489
    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    goto/16 :goto_0

    .line 490
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 491
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "mainconfig"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 492
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v25, "send_by_enter"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 493
    .local v18, "send":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 494
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v26, "send_by_enter"

    if-nez v18, :cond_c

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 497
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v18, :cond_d

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 494
    .restart local p1    # "view":Landroid/view/View;
    :cond_c
    const/16 v25, 0x0

    goto :goto_4

    .line 497
    .end local p1    # "view":Landroid/view/View;
    :cond_d
    const/16 v25, 0x0

    goto :goto_5

    .line 499
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v18    # "send":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 500
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->toogleRaiseToSpeak()V

    .line 501
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 502
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 504
    .restart local p1    # "view":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 505
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->toggleAutoplayGifs()V

    .line 506
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 507
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 509
    .restart local p1    # "view":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 510
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->toggleSaveToGallery()V

    .line 511
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 512
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 514
    .restart local p1    # "view":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 515
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->toggleCustomTabs()V

    .line 516
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 517
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 519
    .restart local p1    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 520
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->toggleDirectShare()V

    .line 521
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 522
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 524
    .restart local p1    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 526
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 528
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 530
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/ThemeActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/ThemeActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 532
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 536
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v25, "AreYouSure"

    const v26, 0x7f07008e

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 538
    const-string/jumbo v25, "AppName"

    const v26, 0x7f07007d

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 539
    const-string/jumbo v25, "OK"

    const v26, 0x7f0704f5

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/SettingsActivity$5$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$5$3;-><init>(Lorg/telegram/ui/SettingsActivity$5;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 545
    const-string/jumbo v25, "Cancel"

    const v26, 0x7f070105

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 547
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "TelegramFaqUrl"

    const v27, 0x7f0706cf

    invoke-static/range {v26 .. v27}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "PrivacyPolicyUrl"

    const v27, 0x7f0705a7

    invoke-static/range {v26 .. v27}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 557
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v25, "SortBy"

    const v26, 0x7f0706a6

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 559
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "Default"

    const v28, 0x7f0701fd

    .line 560
    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-string/jumbo v27, "SortFirstName"

    const v28, 0x7f0706aa

    .line 561
    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string/jumbo v27, "SortLastName"

    const v28, 0x7f0706ab

    .line 562
    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    new-instance v26, Lorg/telegram/ui/SettingsActivity$5$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SettingsActivity$5$4;-><init>(Lorg/telegram/ui/SettingsActivity$5;I)V

    .line 559
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 575
    const-string/jumbo v25, "Cancel"

    const v26, 0x7f070105

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 577
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 579
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->bioRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 580
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v24

    .line 581
    .local v24, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v24, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/ChangeBioActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/ChangeBioActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 584
    .end local v24    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/ui/ChangePhoneHelpActivity;-><init>()V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 586
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/StickersActivity;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 588
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$3300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 592
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v13, v0, [Z

    .line 593
    .local v13, "maskValues":[Z
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    .local v6, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 596
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 597
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 598
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 599
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_21

    const/16 v25, 0x2

    :goto_7
    move/from16 v0, v25

    if-ge v4, v0, :cond_23

    .line 600
    const/4 v15, 0x0

    .line 601
    .local v15, "name":Ljava/lang/String;
    if-nez v4, :cond_22

    .line 602
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v25, v0

    aput-boolean v25, v13, v4

    .line 603
    const-string/jumbo v25, "EmojiBigSize"

    const v26, 0x7f070257

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 608
    :cond_20
    :goto_8
    new-instance v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 609
    .local v8, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 610
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    const/16 v25, -0x1

    const/16 v26, 0x30

    invoke-static/range {v25 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    const-string/jumbo v25, ""

    aget-boolean v26, v13, v4

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v8, v15, v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 613
    const-string/jumbo v25, "dialogTextBlack"

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 614
    new-instance v25, Lorg/telegram/ui/SettingsActivity$5$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lorg/telegram/ui/SettingsActivity$5$5;-><init>(Lorg/telegram/ui/SettingsActivity$5;[Z)V

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .end local v8    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v15    # "name":Ljava/lang/String;
    :cond_21
    const/16 v25, 0x1

    goto/16 :goto_7

    .line 604
    .restart local v15    # "name":Ljava/lang/String;
    :cond_22
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_20

    .line 605
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v25, v0

    aput-boolean v25, v13, v4

    .line 606
    const-string/jumbo v25, "EmojiUseDefault"

    const v26, 0x7f070259

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_8

    .line 624
    .end local v15    # "name":Ljava/lang/String;
    :cond_23
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 625
    .local v7, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const-string/jumbo v25, "Save"

    const v26, 0x7f070609

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 627
    const-string/jumbo v25, "dialogTextBlue2"

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 628
    new-instance v25, Lorg/telegram/ui/SettingsActivity$5$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Lorg/telegram/ui/SettingsActivity$5$6;-><init>(Lorg/telegram/ui/SettingsActivity$5;[ZI)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const/16 v25, -0x1

    const/16 v26, 0x30

    invoke-static/range {v25 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v6, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 650
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v7    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v13    # "maskValues":[Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v25, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->dumpCallStatsRow:I
    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v25

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 651
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "mainconfig"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 652
    .restart local v17    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v25, "dbg_dump_call_stats"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 653
    .local v9, "dump":Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 654
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v26, "dbg_dump_call_stats"

    if-nez v9, :cond_25

    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 655
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 657
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v9, :cond_26

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 654
    .restart local p1    # "view":Landroid/view/View;
    :cond_25
    const/16 v25, 0x0

    goto :goto_9

    .line 657
    .end local p1    # "view":Landroid/view/View;
    :cond_26
    const/16 v25, 0x0

    goto :goto_a
.end method
