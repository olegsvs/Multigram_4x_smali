.class Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlusChatsStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 796
    iput-object p2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 797
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 823
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 949
    :cond_0
    const/4 v0, 0x1

    .line 957
    :goto_0
    return v0

    .line 950
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 951
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 952
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 953
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 954
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 955
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 957
    :cond_5
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 833
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 835
    .local v10, "type":I
    if-nez v10, :cond_1

    .line 836
    if-nez p2, :cond_0

    .line 837
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 943
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .line 839
    :cond_1
    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 840
    if-nez p2, :cond_2

    .line 841
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v11, p2

    .line 843
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    .line 846
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v5

    .local v5, "k":I
    move-object/from16 v11, p2

    .line 847
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Total"

    const v14, 0x7f0706f5

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_3

    const-string/jumbo v12, ""

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4600(Lorg/telegram/ui/PlusChatsStatsActivity;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " / "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "Cancelled"

    const v15, 0x7f07010b

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_4
    const-string/jumbo v12, ""

    goto :goto_2

    .line 848
    .end local v5    # "k":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    .line 849
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int v5, v11, v12

    .restart local v5    # "k":I
    move-object/from16 v11, p2

    .line 850
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Created"

    const v14, 0x7f0707c0

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_6

    const-string/jumbo v12, ""

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 851
    .end local v5    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 852
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int v5, v11, v12

    .restart local v5    # "k":I
    move-object/from16 v11, p2

    .line 853
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Administrator"

    const v14, 0x7f070060

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_8

    const-string/jumbo v12, ""

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 855
    .end local v5    # "k":I
    :cond_9
    const/4 v11, 0x2

    if-ne v10, v11, :cond_1c

    .line 856
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "chatsstats"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 858
    .local v7, "preferences":Landroid/content/SharedPreferences;
    if-nez p2, :cond_a

    .line 859
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v8, p2

    .line 861
    check-cast v8, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 863
    .local v8, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const/4 v2, 0x0

    .line 864
    .local v2, "counter":I
    const-string/jumbo v9, ""

    .line 865
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 866
    .local v6, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 867
    .local v3, "div":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_d

    .line 868
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 869
    const-string/jumbo v6, "totalChatsCount"

    .line 870
    const-string/jumbo v11, "Total"

    const v12, 0x7f0706f5

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 931
    :cond_b
    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "c":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    if-lez v11, :cond_c

    invoke-interface {v7, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sub-int v1, v2, v11

    .line 934
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v1, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 871
    .end local v1    # "c":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_e

    .line 872
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 873
    const-string/jumbo v6, "usersCount"

    .line 874
    const-string/jumbo v11, "Users"

    const v12, 0x7f070738

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 875
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_f

    .line 876
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 877
    const-string/jumbo v6, "groupsCount"

    .line 878
    const-string/jumbo v11, "Groups"

    const v12, 0x7f070343

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 879
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_10

    .line 880
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 881
    const-string/jumbo v6, "superGroupsCount"

    .line 882
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f0706c2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 883
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_11

    .line 884
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 885
    const-string/jumbo v6, "channelsCount"

    .line 886
    const-string/jumbo v11, "Channels"

    const v12, 0x7f070175

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 887
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_12

    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 889
    const-string/jumbo v6, "botsCount"

    .line 890
    const/4 v3, 0x1

    .line 891
    const-string/jumbo v11, "Bots"

    const v12, 0x7f0700e7

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 892
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_13

    .line 893
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 894
    const-string/jumbo v6, "secretsCount"

    .line 896
    const-string/jumbo v11, "SecretChat"

    const v12, 0x7f070631

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 897
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_14

    .line 898
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 899
    const-string/jumbo v6, "otherCount"

    .line 901
    const-string/jumbo v11, "ReportChatOther"

    const v12, 0x7f0705ca

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 902
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_15

    .line 903
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 904
    const-string/jumbo v6, "favsCount"

    .line 905
    const-string/jumbo v11, "Favorites"

    const v12, 0x7f0702ce

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 906
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_16

    .line 907
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 908
    const-string/jumbo v6, "ownGroupsCount"

    .line 909
    const-string/jumbo v11, "Groups"

    const v12, 0x7f070343

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 910
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_17

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 912
    const-string/jumbo v6, "ownSuperGroupsCount"

    .line 913
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f0706c2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 914
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_18

    .line 915
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 916
    const-string/jumbo v6, "ownChannelsCount"

    .line 917
    const-string/jumbo v11, "Channels"

    const v12, 0x7f070175

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 918
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_19

    .line 919
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 920
    const-string/jumbo v6, "adminGroupsCount"

    .line 921
    const-string/jumbo v11, "Groups"

    const v12, 0x7f070343

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 922
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_1a

    .line 923
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 924
    const-string/jumbo v6, "adminSuperGroupsCount"

    .line 925
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f0706c2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 926
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_b

    .line 927
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 928
    const-string/jumbo v6, "adminChannelsCount"

    .line 929
    const-string/jumbo v11, "Channels"

    const v12, 0x7f070175

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 934
    .restart local v1    # "c":I
    :cond_1b
    const-string/jumbo v11, ""

    goto/16 :goto_6

    .line 937
    .end local v1    # "c":I
    .end local v2    # "counter":I
    .end local v3    # "div":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    .end local v8    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v9    # "title":Ljava/lang/String;
    :cond_1c
    if-nez p2, :cond_1d

    .line 938
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1d
    move-object/from16 v4, p2

    .line 940
    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    .line 941
    .local v4, "emptyCell":Lorg/telegram/ui/Cells/EmptyCell;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 807
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 808
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

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
