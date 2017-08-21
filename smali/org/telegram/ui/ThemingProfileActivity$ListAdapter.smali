.class Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 643
    iput-object p2, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 644
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 667
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 672
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$3000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 833
    const/4 v0, 0x0

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 836
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 838
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 841
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 842
    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 843
    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 844
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 846
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 847
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 849
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 850
    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const v6, 0x7f0705fd

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 683
    .local v2, "type":I
    const-string/jumbo v0, ""

    .line 684
    .local v0, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$000(Lorg/telegram/ui/ThemingProfileActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    const-string/jumbo v0, "5."

    .line 686
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 697
    if-nez p2, :cond_1

    .line 698
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 824
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 825
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2a

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 827
    :cond_2
    return-object p2

    .line 688
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_4

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 690
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 701
    :cond_6
    if-ne v2, v8, :cond_9

    .line 702
    if-nez p2, :cond_7

    .line 703
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 704
    .restart local p2    # "view":Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 706
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_8

    move-object v3, p2

    .line 707
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Header"

    const v6, 0x7f070349

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 708
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1

    move-object v3, p2

    .line 709
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OptionsList"

    const v6, 0x7f07050d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    :cond_9
    if-ne v2, v7, :cond_e

    .line 713
    if-nez p2, :cond_a

    .line 714
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v1, p2

    .line 716
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 717
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_b

    .line 718
    const-string/jumbo v4, "profileNameSize"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "NameSize"

    const v6, 0x7f07044e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 720
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_c

    .line 721
    const-string/jumbo v4, "profileStatusSize"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "StatusSize"

    const v6, 0x7f0706b3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 723
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_d

    .line 724
    const-string/jumbo v4, "profileAvatarRadius"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AvatarRadius"

    const v6, 0x7f0700c9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 726
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 727
    const-string/jumbo v4, "profileRowAvatarRadius"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AvatarRadius"

    const v6, 0x7f0700c9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileRowAvatarRadius:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 731
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_e
    if-ne v2, v9, :cond_1e

    .line 732
    if-nez p2, :cond_f

    .line 733
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_f
    move-object v1, p2

    .line 736
    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 737
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_10

    .line 738
    const-string/jumbo v4, "profileHeaderColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "HeaderColor"

    const v6, 0x7f07034a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 740
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_12

    .line 741
    const-string/jumbo v4, "profileHeaderGradientColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradientColor"

    const v6, 0x7f0705ff

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-nez v5, :cond_11

    :goto_3
    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_11
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientColor:I

    goto :goto_3

    .line 743
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_13

    .line 744
    const-string/jumbo v3, "profileHeaderIconsColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "HeaderIconsColor"

    const v5, 0x7f07034b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarIconsColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 746
    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_14

    .line 747
    const-string/jumbo v3, "profileIconsColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "IconsColor"

    const v5, 0x7f070378

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 749
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_15

    .line 750
    const-string/jumbo v3, "profileCreatorStarColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "CreatorStarColor"

    const v5, 0x7f0701d8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowCreatorStarColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 752
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_16

    .line 753
    const-string/jumbo v4, "profileAdminStarColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AdminStarColor"

    const v6, 0x7f07005f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowAdminStarColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 755
    :cond_16
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_17

    .line 756
    const-string/jumbo v3, "profileNameColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "NameColor"

    const v5, 0x7f07044d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 758
    :cond_17
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_18

    .line 759
    const-string/jumbo v4, "profileStatusColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "StatusColor"

    const v6, 0x7f0706b2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 761
    :cond_18
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_19

    .line 762
    const-string/jumbo v4, "profileRowColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowColor"

    const v6, 0x7f0705fc

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 764
    :cond_19
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1b

    .line 765
    const-string/jumbo v4, "profileRowGradientColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradientColor"

    const v6, 0x7f0705ff

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-nez v5, :cond_1a

    :goto_4
    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1a
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientColor:I

    goto :goto_4

    .line 767
    :cond_1b
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1c

    .line 768
    const-string/jumbo v3, "profileTitleColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "NameColor"

    const v5, 0x7f07044d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 770
    :cond_1c
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1d

    .line 771
    const-string/jumbo v3, "profileSummaryColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "StatusColor"

    const v5, 0x7f0706b2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 773
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 774
    const-string/jumbo v3, "profileOnlineColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "OnlineColor"

    const v5, 0x7f0704fa

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowOnlineColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 777
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_1e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1f

    .line 778
    if-nez p2, :cond_1

    .line 779
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 788
    :cond_1f
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 789
    if-nez p2, :cond_20

    .line 790
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    move-object v1, p2

    .line 792
    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 794
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_25

    .line 795
    const-string/jumbo v4, "profileHeaderGradient"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 796
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 797
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-nez v4, :cond_21

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientDisabled"

    const v6, 0x7f070600

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 799
    :cond_21
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v8, :cond_22

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTopBottom"

    const v6, 0x7f070604

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 801
    :cond_22
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v7, :cond_23

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientLeftRight"

    const v6, 0x7f070601

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 803
    :cond_23
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v9, :cond_24

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTLBR"

    const v6, 0x7f070603

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 805
    :cond_24
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientBLTR"

    const v6, 0x7f0705fe

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 808
    :cond_25
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 809
    const-string/jumbo v4, "profileRowGradient"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 810
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 811
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-nez v4, :cond_26

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientDisabled"

    const v6, 0x7f070600

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 813
    :cond_26
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v8, :cond_27

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTopBottom"

    const v6, 0x7f070604

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 815
    :cond_27
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v7, :cond_28

    .line 816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientLeftRight"

    const v6, 0x7f070601

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 817
    :cond_28
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v9, :cond_29

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTLBR"

    const v6, 0x7f070603

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 819
    :cond_29
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientBLTR"

    const v6, 0x7f0705fe

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 825
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_2a
    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 654
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 655
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 656
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 657
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
