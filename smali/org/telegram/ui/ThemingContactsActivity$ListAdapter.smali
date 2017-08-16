.class Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingContactsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingContactsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 604
    iput-object p2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 605
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$2400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 631
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 773
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 774
    const/4 v0, 0x0

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 777
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 783
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 785
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientListCheckRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 786
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 788
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 789
    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x2

    const v8, 0x7f0705fd

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 641
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 642
    .local v3, "type":I
    const-string/jumbo v0, ""

    .line 643
    .local v0, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->showPrefix:Z
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$000(Lorg/telegram/ui/ThemingContactsActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 644
    const-string/jumbo v0, "3."

    .line 645
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 656
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    if-nez v3, :cond_6

    .line 657
    if-nez p2, :cond_1

    .line 658
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 765
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 766
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_28

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 768
    :cond_2
    return-object p2

    .line 647
    .end local v2    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ge p1, v6, :cond_5

    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 661
    .restart local v2    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    if-ne v3, v10, :cond_9

    .line 662
    if-nez p2, :cond_7

    .line 663
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 664
    .restart local p2    # "view":Landroid/view/View;
    const/4 v5, -0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 666
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_8

    move-object v5, p2

    .line 667
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

    .line 668
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I
    invoke-static {v5}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 669
    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ContactsList"

    const v8, 0x7f0701bb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :cond_9
    if-ne v3, v9, :cond_d

    .line 673
    if-nez p2, :cond_a

    .line 674
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v1, p2

    .line 676
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 677
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_b

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarRadius"

    const v8, 0x7f0700c9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->contactsAvatarRadius:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 680
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_c

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "NameSize"

    const v8, 0x7f07044e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->contactsNameSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 683
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 685
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "StatusSize"

    const v8, 0x7f0706b3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->contactsStatusSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 689
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_d
    if-ne v3, v11, :cond_1a

    .line 690
    if-nez p2, :cond_e

    .line 691
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_e
    move-object v1, p2

    .line 694
    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 696
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_f

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderColor"

    const v8, 0x7f07034a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderColor:I

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 698
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_11

    .line 699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f0705ff

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "contactsHeaderGradient"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_10

    :goto_3
    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "contactsHeaderGradientColor"

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    .line 700
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_12

    .line 701
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

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderTitleColor:I

    invoke-virtual {v1, v5, v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 702
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_13

    .line 703
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderIconsColor"

    const v8, 0x7f07034b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderIconsColor:I

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 704
    :cond_13
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_14

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "IconsColor"

    const v7, 0x7f070378

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->contactsIconsColor:I

    invoke-virtual {v1, v5, v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 706
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_15

    .line 707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowColor"

    const v8, 0x7f0705fc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->contactsRowColor:I

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 708
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_17

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f0705ff

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "contactsRowGradient"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_16

    :goto_4
    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v5, "contactsRowGradientColor"

    const/4 v7, -0x1

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_4

    .line 710
    :cond_17
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_18

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "NameColor"

    const v7, 0x7f07044d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->contactsNameColor:I

    invoke-virtual {v1, v5, v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 712
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_19

    .line 713
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

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->contactsStatusColor:I

    invoke-virtual {v1, v5, v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 714
    :cond_19
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "OnlineColor"

    const v8, 0x7f0704fa

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->contactsOnlineColor:I

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 717
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_1a
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1d

    .line 718
    if-nez p2, :cond_1b

    .line 719
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1b
    move-object v1, p2

    .line 721
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 722
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientListCheckRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 723
    const-string/jumbo v6, "contactsRowGradientListCheck"

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 724
    const-string/jumbo v6, "contactsRowGradient"

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v4

    .line 725
    .local v4, "value":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientList"

    const v8, 0x7f070602

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_1c

    :goto_5
    invoke-virtual {v1, v6, v5, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v7, "contactsRowGradientListCheck"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_5

    .line 727
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v4    # "value":I
    :cond_1d
    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 728
    if-nez p2, :cond_1e

    .line 729
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1e
    move-object v1, p2

    .line 732
    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 733
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_23

    .line 734
    const-string/jumbo v6, "contactsHeaderGradient"

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 736
    const-string/jumbo v6, "contactsHeaderGradient"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 737
    .restart local v4    # "value":I
    if-nez v4, :cond_1f

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070600

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 739
    :cond_1f
    if-ne v4, v10, :cond_20

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070604

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 741
    :cond_20
    if-ne v4, v9, :cond_21

    .line 742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070601

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 743
    :cond_21
    if-ne v4, v11, :cond_22

    .line 744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070603

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 745
    :cond_22
    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f0705fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 748
    .end local v4    # "value":I
    :cond_23
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I
    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 749
    const-string/jumbo v6, "contactsRowGradient"

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 750
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 751
    const-string/jumbo v6, "contactsRowGradient"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 752
    .restart local v4    # "value":I
    if-nez v4, :cond_24

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070600

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 754
    :cond_24
    if-ne v4, v10, :cond_25

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070604

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 756
    :cond_25
    if-ne v4, v9, :cond_26

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070601

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 758
    :cond_26
    if-ne v4, v11, :cond_27

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070603

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 760
    :cond_27
    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f0705fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 766
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v4    # "value":I
    :cond_28
    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 614
    const-string/jumbo v2, "contactsRowGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 615
    .local v0, "g":I
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    const-string/jumbo v2, "contactsHeaderGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientListCheckRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    .line 616
    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
