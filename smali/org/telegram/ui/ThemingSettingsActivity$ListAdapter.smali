.class Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 515
    iput-object p2, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 516
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 540
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarRadiusRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 646
    :cond_0
    const/4 v0, 0x3

    .line 655
    :goto_0
    return v0

    .line 648
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerTitleColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerStatusColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerIconsColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->backgroundColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->shadowColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->sectionColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->titleColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->summaryColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->dividerColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 649
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 651
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 652
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 550
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 551
    .local v4, "type":I
    const-string/jumbo v0, ""

    .line 552
    .local v0, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->showPrefix:Z
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$000(Lorg/telegram/ui/ThemingSettingsActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    const-string/jumbo v0, "6."

    .line 554
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_0
    :goto_0
    if-nez v4, :cond_6

    .line 565
    if-nez p2, :cond_1

    .line 566
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 637
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 638
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_1a

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 640
    :cond_2
    return-object p2

    .line 556
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_4

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ge p1, v5, :cond_5

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "1."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "2."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 569
    :cond_6
    if-ne v4, v9, :cond_9

    .line 570
    if-nez p2, :cond_7

    .line 571
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 572
    .restart local p2    # "view":Landroid/view/View;
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 574
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_8

    move-object v5, p2

    .line 575
    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Header"

    const v8, 0x7f070349

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 576
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 577
    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "OptionsList"

    const v8, 0x7f07050d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    :cond_9
    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    .line 581
    if-nez p2, :cond_a

    .line 582
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v2, p2

    .line 584
    check-cast v2, Lorg/telegram/ui/Cells/TextColorCell;

    .line 586
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_b

    .line 587
    const-string/jumbo v5, "prefActionbarColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "HeaderColor"

    const v7, 0x7f07034a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 589
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerTitleColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_c

    .line 590
    const-string/jumbo v5, "prefActionbarTitleColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "HeaderTitleColor"

    const v7, 0x7f070353

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 592
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerStatusColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_d

    .line 593
    const-string/jumbo v5, "prefActionbarStatusColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "StatusColor"

    const v7, 0x7f0706b2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarStatusColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 595
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerIconsColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_e

    .line 596
    const-string/jumbo v5, "prefActionbarIconsColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "HeaderIconsColor"

    const v7, 0x7f07034b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 598
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_f

    .line 599
    const-string/jumbo v5, "prefAvatarColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "AvatarColor"

    const v7, 0x7f0700c7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 601
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->backgroundColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_10

    .line 602
    const-string/jumbo v5, "prefBGColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "BackgroundColor"

    const v7, 0x7f0700cd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 604
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->shadowColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_11

    .line 605
    const-string/jumbo v5, "prefShadowColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ShadowColor"

    const v7, 0x7f07066f

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 607
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->sectionColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_12

    .line 608
    const-string/jumbo v5, "prefSectionColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SectionColor"

    const v7, 0x7f070635

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefSectionColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 610
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->titleColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_13

    .line 611
    const-string/jumbo v5, "prefTitleColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "TitleColor"

    const v7, 0x7f0706ee

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 613
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->summaryColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_14

    .line 614
    const-string/jumbo v5, "prefSummaryColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SummaryColor"

    const v7, 0x7f0706c1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 616
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->dividerColorRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 617
    const-string/jumbo v5, "prefDividerColor"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "DividerColor"

    const v7, 0x7f070230

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefDividerColor:I

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 620
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_15
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 621
    if-nez p2, :cond_16

    .line 622
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    move-object v2, p2

    .line 624
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 625
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "theme"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 626
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarRadiusRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_18

    .line 627
    const-string/jumbo v5, "prefAvatarRadius"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 628
    const-string/jumbo v6, "prefAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v5, 0x23

    :goto_3
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 629
    .local v1, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "AvatarRadius"

    const v7, 0x7f0700c9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 628
    .end local v1    # "size":I
    :cond_17
    const/16 v5, 0x20

    goto :goto_3

    .line 630
    :cond_18
    iget-object v5, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarSizeRow:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingSettingsActivity;->access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 631
    const-string/jumbo v5, "prefAvatarSize"

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 632
    const-string/jumbo v6, "prefAvatarSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x2d

    :goto_4
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 633
    .restart local v1    # "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "AvatarSize"

    const v7, 0x7f0700ca

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 632
    .end local v1    # "size":I
    :cond_19
    const/16 v5, 0x2a

    goto :goto_4

    .line 638
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v3    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_1a
    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerTitleColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerStatusColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->headerIconsColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarRadiusRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->avatarSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->backgroundColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->shadowColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->sectionColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->titleColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->summaryColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    # getter for: Lorg/telegram/ui/ThemingSettingsActivity;->dividerColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingSettingsActivity;->access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
