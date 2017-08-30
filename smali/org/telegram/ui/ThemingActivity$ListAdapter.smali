.class Lorg/telegram/ui/ThemingActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 622
    iput-object p2, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 623
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$2600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 648
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 755
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$3000(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$3100(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 756
    :cond_0
    const/4 v0, 0x0

    .line 773
    :cond_1
    :goto_0
    return v0

    .line 758
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$2800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$2700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$2900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 759
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$1300(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 764
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 765
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 767
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$200(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 768
    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    .line 769
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingActivity;->access$1900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 770
    const/4 v0, 0x5

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

    .line 658
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingActivity$ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 659
    .local v5, "type":I
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$000(Lorg/telegram/ui/ThemingActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingActivity;->access$2700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_3

    .line 661
    if-nez p2, :cond_0

    .line 662
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 747
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 748
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_18

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 750
    :cond_1
    return-object p2

    .line 659
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0

    .line 665
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_3
    if-ne v5, v9, :cond_7

    .line 666
    if-nez p2, :cond_4

    .line 667
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 670
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$2800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_5

    move-object v6, p2

    .line 671
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v7, "General"

    const v8, 0x7f070331

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 672
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$2700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_6

    move-object v6, p2

    .line 673
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v7, "Screens"

    const v8, 0x7f07061a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$2900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    move-object v6, p2

    .line 675
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v7, "Themes"

    const v8, 0x7f0706dd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 678
    :cond_7
    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    .line 679
    if-nez p2, :cond_8

    .line 680
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_8
    move-object v4, p2

    .line 682
    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 683
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1300(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_9

    .line 684
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "MainScreen"

    const v8, 0x7f0703fa

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 685
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_a

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ChatScreen"

    const v8, 0x7f07017f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 687
    :cond_a

    if-ne p1, v6, :cond_b

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ContactsScreen"

    const v8, 0x7f0701bf

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 689
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_c

    .line 690
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "NavigationDrawer"

    const v8, 0x7f070450

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 691
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_d

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ProfileScreen"

    const v8, 0x7f0705ac

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 693
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SettingsScreen"

    const v8, 0x7f07066e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 697
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_e
    const/4 v6, 0x3

    if-ne v5, v6, :cond_13

    .line 698
    if-nez p2, :cond_f

    .line 699
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_f
    move-object v4, p2

    .line 701
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 703
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_11

    .line 704
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 705
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 706
    const-string/jumbo v6, "SaveTheme"

    const v7, 0x7f07060d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    .line 708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 710
    :cond_10
    const-string/jumbo v6, "SaveThemeSum"

    const v7, 0x7f07060e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 711
    .end local v3    # "text":Ljava/lang/String;
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_12

    .line 712
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 713
    const-string/jumbo v6, "ApplyThemeFile"

    const v7, 0x7f070081

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 717
    .restart local v3    # "text":Ljava/lang/String;
    const-string/jumbo v6, "ApplyThemeSum"

    const v7, 0x7f070082

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 718
    .end local v3    # "text":Ljava/lang/String;
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 719
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 720
    const-string/jumbo v6, "ResetThemeSettings"

    const v7, 0x7f0705e5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ResetThemeSettingsSum"

    const v8, 0x7f0705e6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 723
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_13
    const/4 v6, 0x4

    if-ne v5, v6, :cond_16

    .line 724
    if-nez p2, :cond_14

    .line 725
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_14
    move-object v4, p2

    .line 727
    check-cast v4, Lorg/telegram/ui/Cells/TextColorCell;

    .line 729
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 730
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "themeColor"

    const v7, -0xab8a62

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, "defColor":I
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$200(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_15

    .line 733
    const-string/jumbo v6, "themeColor"

    const v7, 0x7f0707be

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 734
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 735
    const-string/jumbo v6, "DialogColor"

    const v7, 0x7f07021b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "dialogColor"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v6, v7, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 737
    .end local v0    # "defColor":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_16
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 738
    if-nez p2, :cond_17

    .line 739
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    move-object v4, p2

    .line 741
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 742
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingActivity;->access$1900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 743
    const-string/jumbo v6, "usePlusTheme"

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 744
    const-string/jumbo v6, "UsePlusTheme"

    const v7, 0x7f0707d0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    invoke-virtual {v4, v6, v7, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 748
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_18
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$200(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1300(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    .line 633
    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1900(Lorg/telegram/ui/ThemingActivity;)I

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
