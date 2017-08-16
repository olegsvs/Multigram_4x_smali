.class public Lorg/telegram/ui/Components/AlertsCreator;
.super Ljava/lang/Object;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AlertsCreator$PaymentAlertDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    return-void
.end method

.method public static createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 21
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "dialog_id"    # J
    .param p3, "globalGroup"    # Z
    .param p4, "globalAll"    # Z
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 460
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 461
    .local v19, "preferences":Landroid/content/SharedPreferences;
    if-eqz p3, :cond_0

    .line 462
    const-string/jumbo v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 476
    .local v16, "currentColor":I
    :goto_0
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 477
    .local v18, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 478
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "ColorRed"

    const v7, 0x7f0701a8

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ColorOrange"

    const v7, 0x7f0701a6

    .line 479
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "ColorYellow"

    const v7, 0x7f0701ac

    .line 480
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "ColorGreen"

    const v7, 0x7f0701a5

    .line 481
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "ColorCyan"

    const v7, 0x7f0701a3

    .line 482
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "ColorBlue"

    const v7, 0x7f0701a2

    .line 483
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "ColorViolet"

    const v7, 0x7f0701aa

    .line 484
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "ColorPink"

    const v7, 0x7f0701a7

    .line 485
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "ColorWhite"

    const v7, 0x7f0701ab

    .line 486
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 487
    .local v17, "descriptions":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [I

    const/4 v4, 0x0

    aput v16, v6, v4

    .line 488
    .local v6, "selectedColor":[I
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_1
    const/16 v4, 0x9

    if-ge v13, v4, :cond_5

    .line 489
    new-instance v15, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 490
    .local v15, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v15, v4, v5, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 491
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 492
    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v4, v4, v13

    sget-object v5, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v5, v5, v13

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 493
    aget-object v5, v17, v13

    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v4, v4, v13

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v15, v5, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 494
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$4;

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/AlertsCreator$4;-><init>(Landroid/widget/LinearLayout;[I)V

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 463
    .end local v6    # "selectedColor":[I
    .end local v13    # "a":I
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v16    # "currentColor":I
    .end local v17    # "descriptions":[Ljava/lang/String;
    .end local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    if-eqz p4, :cond_1

    .line 464
    const-string/jumbo v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 466
    .end local v16    # "currentColor":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 469
    .end local v16    # "currentColor":I
    :cond_2
    move-wide/from16 v0, p1

    long-to-int v4, v0

    if-gez v4, :cond_3

    .line 470
    const-string/jumbo v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 472
    .end local v16    # "currentColor":I
    :cond_3
    const-string/jumbo v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_0

    .line 493
    .restart local v6    # "selectedColor":[I
    .restart local v13    # "a":I
    .restart local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v17    # "descriptions":[Ljava/lang/String;
    .restart local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 507
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_5
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .local v14, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "LedColor"

    const v5, 0x7f0703d8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 509
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 510
    const-string/jumbo v4, "Set"

    const v5, 0x7f07065f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$5;

    move/from16 v5, p4

    move/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator$5;-><init>(Z[IZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v11, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 528
    const-string/jumbo v4, "LedDisabled"

    const v5, 0x7f0703d9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$6;

    move/from16 v8, p4

    move/from16 v9, p3

    move-wide/from16 v10, p1

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator$6;-><init>(ZZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 546
    if-nez p4, :cond_6

    if-nez p3, :cond_6

    .line 547
    const-string/jumbo v4, "Default"

    const v5, 0x7f0701fd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AlertsCreator$7;

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator$7;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 560
    :cond_6
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f07044a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 280
    :goto_0
    return-object v2

    .line 235
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string/jumbo v2, "Notifications"

    const v3, 0x7f0704dc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 237
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Hours"

    .line 238
    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Hours"

    const/16 v5, 0x8

    .line 239
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Days"

    .line 240
    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    const-string/jumbo v3, "MuteDisable"

    const v4, 0x7f070449

    .line 241
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 243
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$1;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator$1;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 280
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_0
.end method

.method public static createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 11
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "globalGroup"    # Z
    .param p3, "globalAll"    # Z
    .param p4, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 740
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "Notifications"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 741
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const/4 v7, 0x1

    new-array v6, v7, [I

    .line 742
    .local v6, "selected":[I
    if-eqz p3, :cond_1

    .line 743
    const/4 v7, 0x0

    const-string/jumbo v8, "popupAll"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    .line 747
    :cond_0
    :goto_0
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "NoPopup"

    const v9, 0x7f07047f

    .line 748
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "OnlyWhenScreenOn"

    const v9, 0x7f070504

    .line 749
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "OnlyWhenScreenOff"

    const v9, 0x7f070503

    .line 750
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "AlwaysShowPopup"

    const v9, 0x7f070070

    .line 751
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 754
    .local v3, "descriptions":[Ljava/lang/String;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 755
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 757
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 758
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 759
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 760
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 761
    const v7, -0x4c4c4d

    const v8, -0xc85610

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 762
    aget-object v8, v3, v0

    const/4 v7, 0x0

    aget v7, v6, v7

    if-ne v7, v0, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v2, v8, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 763
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$10;

    invoke-direct {v7, v6, p2, p1, p4}, Lorg/telegram/ui/Components/AlertsCreator$10;-><init>([IZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "a":I
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v3    # "descriptions":[Ljava/lang/String;
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    if-eqz p2, :cond_0

    .line 745
    const/4 v7, 0x0

    const-string/jumbo v8, "popupGroup"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    goto/16 :goto_0

    .line 762
    .restart local v0    # "a":I
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v3    # "descriptions":[Ljava/lang/String;
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 782
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_3
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v7, "PopupNotification"

    const v8, 0x7f07059a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 784
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 785
    const-string/jumbo v7, "Cancel"

    const v8, 0x7f070105

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 786
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public static createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 16
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 666
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 667
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 669
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_1

    .line 670
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "priority_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 671
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 672
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 676
    :goto_0
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "NotificationsPrioritySettings"

    const v5, 0x7f0704ed

    .line 677
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "NotificationsPriorityDefault"

    const v5, 0x7f0704e9

    .line 678
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "NotificationsPriorityHigh"

    const v5, 0x7f0704ea

    .line 679
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "NotificationsPriorityMax"

    const v5, 0x7f0704ec

    .line 680
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 695
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_1
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 696
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 698
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    array-length v2, v12

    if-ge v9, v2, :cond_5

    .line 699
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 700
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 701
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 702
    const v2, -0x4c4c4d

    const v4, -0xc85610

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 703
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 704
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 705
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$9;

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$9;-><init>([IJZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 674
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v2, 0x0

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    goto/16 :goto_0

    .line 683
    :cond_1
    if-eqz p5, :cond_3

    .line 684
    const/4 v2, 0x0

    const-string/jumbo v4, "priority_messages"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 688
    :cond_2
    :goto_4
    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "NotificationsPriorityDefault"

    const v5, 0x7f0704e9

    .line 689
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "NotificationsPriorityHigh"

    const v5, 0x7f0704ea

    .line 690
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "NotificationsPriorityMax"

    const v5, 0x7f0704ec

    .line 691
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_1

    .line 685
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_2

    .line 686
    const/4 v2, 0x0

    const-string/jumbo v4, "priority_group"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    goto :goto_4

    .line 703
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 732
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_5
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 733
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "NotificationsPriority"

    const v4, 0x7f0704e8

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 734
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 735
    const-string/jumbo v2, "Cancel"

    const v4, 0x7f070105

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 736
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createReportAlert(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)Landroid/app/Dialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J
    .param p3, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 284
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 285
    :cond_0
    const/4 v2, 0x0

    .line 323
    :goto_0
    return-object v2

    .line 288
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string/jumbo v2, "ReportChat"

    const v3, 0x7f0705c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 290
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "ReportChatSpam"

    const v4, 0x7f0705cc

    .line 291
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "ReportChatViolence"

    const v4, 0x7f0705cd

    .line 292
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "ReportChatPornography"

    const v4, 0x7f0705cb

    .line 293
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "ReportChatOther"

    const v4, 0x7f0705ca

    .line 294
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 296
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$2;

    invoke-direct {v2, p1, p2, p3}, Lorg/telegram/ui/Components/AlertsCreator$2;-><init>(JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 323
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_0
.end method

.method public static createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "selected"    # I
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 790
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 791
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 793
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 794
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 795
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v6, v7, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 796
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 797
    const v4, -0x4c4c4d

    const v7, -0xc85610

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 798
    aget-object v7, p2, v0

    if-ne p4, v0, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 799
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$11;

    invoke-direct {v4, p1, p5}, Lorg/telegram/ui/Components/AlertsCreator$11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 798
    goto :goto_1

    .line 812
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 813
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 814
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 815
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 816
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 820
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "MessageLifetime"

    const v3, 0x7f07041f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 822
    new-instance v1, Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 823
    .local v1, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 824
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 825
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v2, :cond_1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-ge v2, v5, :cond_1

    .line 826
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 840
    :cond_0
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$12;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AlertsCreator$12;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 861
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 862
    const-string/jumbo v2, "Done"

    const v3, 0x7f070234

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$13;

    invoke-direct {v3, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator$13;-><init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 886
    return-object v0

    .line 827
    :cond_1
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    .line 828
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 829
    :cond_2
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    .line 830
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 831
    :cond_3
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0xe10

    if-ne v2, v3, :cond_4

    .line 832
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 833
    :cond_4
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x15180

    if-ne v2, v3, :cond_5

    .line 834
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 835
    :cond_5
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x93a80

    if-ne v2, v3, :cond_6

    .line 836
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 837
    :cond_6
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_0

    .line 838
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 16
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "prefKeyPrefix"    # Ljava/lang/String;
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 574
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 575
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 577
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_2

    .line 578
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 579
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 580
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 584
    :cond_0
    :goto_0
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "VibrationDefault"

    const v5, 0x7f070743

    .line 585
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "Short"

    const v5, 0x7f070682

    .line 586
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "Long"

    const v5, 0x7f0703f9

    .line 587
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "VibrationDisabled"

    const v5, 0x7f070744

    .line 588
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 608
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_1
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 609
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 611
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_2
    array-length v2, v12

    if-ge v9, v2, :cond_7

    .line 612
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 613
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 614
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 615
    const v2, -0x4c4c4d

    const v4, -0xc85610

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 616
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 617
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$8;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$8;-><init>([IJLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 581
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 582
    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v4, v3, v2

    goto/16 :goto_0

    .line 591
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 592
    const/4 v2, 0x0

    aget v2, v3, v2

    if-nez v2, :cond_4

    .line 593
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 599
    :cond_3
    :goto_4
    const/4 v2, 0x5

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "VibrationDisabled"

    const v5, 0x7f070744

    .line 600
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "VibrationDefault"

    const v5, 0x7f070743

    .line 601
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "Short"

    const v5, 0x7f070682

    .line 602
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "Long"

    const v5, 0x7f0703f9

    .line 603
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "OnlyIfSilent"

    const v5, 0x7f070502

    .line 604
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_1

    .line 594
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 595
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    goto :goto_4

    .line 596
    :cond_5
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 597
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_4

    .line 616
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 658
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_7
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Vibrate"

    const v4, 0x7f070742

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 660
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 661
    const-string/jumbo v2, "Cancel"

    const v4, 0x7f070105

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 662
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 6
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 565
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 566
    const-string/jumbo v4, "vibrate_"

    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p6

    .line 570
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 568
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v4, "vibrate_group"

    .restart local v4    # "prefix":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "vibrate_messages"

    goto :goto_1
.end method

.method private static getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 329
    .local v0, "time":I
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    .line 330
    const-string/jumbo v2, "Seconds"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "timeString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "FloodWaitTime"

    const v3, 0x7f0702dc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 332
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "Minutes"

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "timeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 7
    .param p0, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "request"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const v6, 0x7f0701a1

    const v5, 0x7f07027f

    const/4 v2, 0x1

    const v4, 0x7f0702db

    const/4 v1, 0x0

    .line 45
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x196

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 48
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    if-nez v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    if-eqz v0, :cond_5

    .line 54
    :cond_2
    if-eqz p1, :cond_4

    .line 55
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 205
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :cond_5
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "FLOOD_WAIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 65
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_1

    .line 67
    :cond_7
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    if-eqz v0, :cond_8

    .line 68
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 71
    :cond_8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "MESSAGE_NOT_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-string/jumbo v0, "EditMessageError"

    const v1, 0x7f07024c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_1

    .line 75
    :cond_9
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMessage;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMedia;

    if-nez v0, :cond_a

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_b

    .line 82
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 85
    :cond_b
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 87
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 88
    :cond_c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "USERS_TOO_MUCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    const-string/jumbo v0, "JoinToGroupErrorFull"

    const v1, 0x7f0703a2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 91
    :cond_d
    const-string/jumbo v0, "JoinToGroupErrorNotExist"

    const v1, 0x7f0703a3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 93
    :cond_e
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_f

    .line 94
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ErrorOccurred"

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 97
    :cond_f
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    if-eqz v0, :cond_14

    .line 98
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 99
    :cond_10
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f070387

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 100
    :cond_11
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 101
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 102
    :cond_12
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 103
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 105
    :cond_13
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 107
    :cond_14
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    if-eqz v0, :cond_1a

    .line 108
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 109
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07038b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 110
    :cond_15
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 111
    :cond_16
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f070387

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 112
    :cond_17
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 113
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 114
    :cond_18
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 115
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 116
    :cond_19
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 119
    :cond_1a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    if-eqz v0, :cond_1d

    .line 120
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1b

    .line 121
    const-string/jumbo v0, "CancelLinkExpired"

    const v1, 0x7f070108

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :cond_1b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 124
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_1c
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :cond_1d
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    if-eqz v0, :cond_23

    .line 130
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 131
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07038b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 132
    :cond_1e
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 133
    :cond_1f
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f070387

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 134
    :cond_20
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 135
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 136
    :cond_21
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 137
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 139
    :cond_22
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 141
    :cond_23
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    if-eqz v0, :cond_2a

    .line 142
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 143
    const-string/jumbo v0, "InvalidPhoneNumber"

    const v1, 0x7f07038b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 144
    :cond_24
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 145
    :cond_25
    const-string/jumbo v0, "InvalidCode"

    const v1, 0x7f070387

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 146
    :cond_26
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 147
    const-string/jumbo v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 148
    :cond_27
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 150
    :cond_28
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_NUMBER_OCCUPIED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 151
    const-string/jumbo v3, "ChangePhoneNumberOccupied"

    const v4, 0x7f070117

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 153
    :cond_29
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 155
    :cond_2a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v0, :cond_2c

    .line 156
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2b
    move v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 167
    const-string/jumbo v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 156
    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2

    :sswitch_1
    const-string/jumbo v1, "USERNAME_OCCUPIED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "USERNAMES_UNAVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x2

    goto :goto_2

    .line 158
    :pswitch_0
    const-string/jumbo v0, "UsernameInvalid"

    const v1, 0x7f070733

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 161
    :pswitch_1
    const-string/jumbo v0, "UsernameInUse"

    const v1, 0x7f070732

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 164
    :pswitch_2
    const-string/jumbo v0, "FeatureUnavailable"

    const v1, 0x7f0702cf

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 170
    :cond_2c
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    if-eqz v0, :cond_2f

    .line 171
    if-eqz p0, :cond_2d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 172
    :cond_2d
    const-string/jumbo v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 174
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 176
    :cond_2f
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    if-nez v0, :cond_30

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    if-eqz v0, :cond_32

    .line 177
    :cond_30
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 178
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 180
    :cond_31
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 182
    :cond_32
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    if-eqz v0, :cond_34

    .line 183
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_33
    move v1, v0

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 191
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 183
    :sswitch_3
    const-string/jumbo v2, "BOT_PRECHECKOUT_FAILED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3

    :sswitch_4
    const-string/jumbo v1, "PAYMENT_FAILED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v2

    goto :goto_3

    .line 185
    :pswitch_3
    const-string/jumbo v0, "PaymentPrecheckoutFailed"

    const v1, 0x7f07054c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 188
    :pswitch_4
    const-string/jumbo v0, "PaymentFailed"

    const v1, 0x7f070549

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 194
    :cond_34
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v0, :cond_3

    .line 195
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :cond_35
    :goto_4
    packed-switch v0, :pswitch_data_3

    .line 200
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 195
    :pswitch_5
    const-string/jumbo v3, "SHIPPING_NOT_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v0, v1

    goto :goto_4

    .line 197
    :pswitch_6
    const-string/jumbo v0, "PaymentNoShippingMethod"

    const v1, 0x7f07054b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_1

    .line 156
    :sswitch_data_0
    .sparse-switch
        -0x87506d2 -> :sswitch_2
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 183
    :sswitch_data_1
    .sparse-switch
        -0x443101f5 -> :sswitch_3
        -0x2ebe874a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 195
    :pswitch_data_2
    .packed-switch 0x68c9574c
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 6
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "isChannel"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 372
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v3, 0x7f07007d

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 377
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ErrorOccurred"

    const v4, 0x7f07027f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 454
    :goto_2
    const-string/jumbo v1, "OK"

    const v3, 0x7f0704f5

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 377
    :sswitch_0
    const-string/jumbo v3, "PEER_FLOOD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "USER_BLOCKED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "USER_BOT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "USER_ID_INVALID"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "USERS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "USER_NOT_MUTUAL_CONTACT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "ADMINS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "BOTS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "USERS_TOO_FEW"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v3, "USER_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v3, "YOU_BLOCKED_USER"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "CHAT_ADMIN_BAN_REQUIRED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "USER_KICKED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v3, "CHAT_ADMIN_INVITE_REQUIRED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v3, "USER_ADMIN_INVALID"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xf

    goto/16 :goto_1

    .line 379
    :pswitch_0
    const-string/jumbo v1, "NobodyLikesSpam2"

    const v3, 0x7f07048f

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 380
    const-string/jumbo v1, "MoreInfo"

    const v3, 0x7f070447

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$3;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/AlertsCreator$3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 390
    :pswitch_1
    if-eqz p2, :cond_3

    .line 391
    const-string/jumbo v1, "ChannelUserCantAdd"

    const v3, 0x7f07016e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 393
    :cond_3
    const-string/jumbo v1, "GroupUserCantAdd"

    const v3, 0x7f07033f

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 397
    :pswitch_2
    if-eqz p2, :cond_4

    .line 398
    const-string/jumbo v1, "ChannelUserAddLimit"

    const v3, 0x7f07016d

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 400
    :cond_4
    const-string/jumbo v1, "GroupUserAddLimit"

    const v3, 0x7f07033e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 404
    :pswitch_3
    if-eqz p2, :cond_5

    .line 405
    const-string/jumbo v1, "ChannelUserLeftError"

    const v3, 0x7f070171

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 407
    :cond_5
    const-string/jumbo v1, "GroupUserLeftError"

    const v3, 0x7f070342

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 411
    :pswitch_4
    if-eqz p2, :cond_6

    .line 412
    const-string/jumbo v1, "ChannelUserCantAdmin"

    const v3, 0x7f07016f

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 414
    :cond_6
    const-string/jumbo v1, "GroupUserCantAdmin"

    const v3, 0x7f070340

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 418
    :pswitch_5
    if-eqz p2, :cond_7

    .line 419
    const-string/jumbo v1, "ChannelUserCantBot"

    const v3, 0x7f070170

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 421
    :cond_7
    const-string/jumbo v1, "GroupUserCantBot"

    const v3, 0x7f070341

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 425
    :pswitch_6
    if-eqz p2, :cond_8

    .line 426
    const-string/jumbo v1, "InviteToChannelError"

    const v3, 0x7f070392

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 428
    :cond_8
    const-string/jumbo v1, "InviteToGroupError"

    const v3, 0x7f070394

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 432
    :pswitch_7
    const-string/jumbo v1, "CreateGroupError"

    const v3, 0x7f0701d4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 435
    :pswitch_8
    const-string/jumbo v1, "UserRestricted"

    const v3, 0x7f07071f

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 438
    :pswitch_9
    const-string/jumbo v1, "YouBlockedUser"

    const v3, 0x7f07078d

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 442
    :pswitch_a
    const-string/jumbo v1, "AddAdminErrorBlacklisted"

    const v3, 0x7f070047

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 445
    :pswitch_b
    const-string/jumbo v1, "AddAdminErrorNotAMember"

    const v3, 0x7f070048

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 448
    :pswitch_c
    const-string/jumbo v1, "AddBannedErrorAdmin"

    const v3, 0x7f070049

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_2

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        -0x691c616a -> :sswitch_9
        -0x201302a8 -> :sswitch_1
        -0x1e9056b1 -> :sswitch_a
        -0x1b10193f -> :sswitch_0
        -0x1909e875 -> :sswitch_7
        0x5e11059 -> :sswitch_d
        0x1ed73733 -> :sswitch_2
        0x3266369e -> :sswitch_b
        0x369e4753 -> :sswitch_f
        0x3e6a9946 -> :sswitch_c
        0x45939caf -> :sswitch_4
        0x492297a7 -> :sswitch_3
        0x4ab0d713 -> :sswitch_6
        0x60bf92d5 -> :sswitch_5
        0x6894e15e -> :sswitch_e
        0x723eea86 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 338
    if-eqz p0, :cond_0

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 343
    .local v1, "time":I
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_2

    .line 344
    const-string/jumbo v3, "Seconds"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "timeString":Ljava/lang/String;
    :goto_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    const-string/jumbo v3, "FloodWaitTime"

    const v4, 0x7f0702dc

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 352
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {p1, v3, v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 346
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "Minutes"

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 5
    .param p0, "result"    # I
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 357
    if-nez p0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 362
    if-ne p0, v3, :cond_2

    .line 363
    const-string/jumbo v1, "ErrorSendRestrictedStickers"

    const v2, 0x7f070281

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 367
    :cond_1
    :goto_1
    const-string/jumbo v1, "OK"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 364
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 365
    const-string/jumbo v1, "ErrorSendRestrictedMedia"

    const v2, 0x7f070280

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 4
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 218
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v1

    .line 221
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f07007d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 224
    const-string/jumbo v2, "OK"

    const v3, 0x7f0704f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 226
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
