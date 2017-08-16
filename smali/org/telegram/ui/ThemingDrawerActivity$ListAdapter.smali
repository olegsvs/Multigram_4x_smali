.class Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingDrawerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 763
    iput-object p2, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 764
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 792
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 970
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 971
    const/4 v0, 0x0

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 973
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 974
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 976
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 980
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 982
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerBackgroundCheckRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->hideBackgroundShadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->centerAvatarRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientListCheckRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 983
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 985
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 986
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 803
    .local v5, "type":I
    const-string/jumbo v1, ""

    .line 804
    .local v1, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->showPrefix:Z
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$000(Lorg/telegram/ui/ThemingDrawerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 805
    const-string/jumbo v1, "4."

    .line 806
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_4

    .line 807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    :cond_0
    :goto_0
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 817
    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "themeColor"

    const v8, -0xff6978

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 819
    .local v0, "defColor":I
    if-nez v5, :cond_7

    .line 820
    if-nez p2, :cond_1

    .line 821
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 959
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 960
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_35

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 962
    :cond_2
    if-eqz p2, :cond_3

    .line 963
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_36

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 965
    :cond_3
    return-object p2

    .line 808
    .end local v0    # "defColor":I
    .end local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_5

    .line 809
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 810
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ge p1, v7, :cond_6

    .line 811
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 813
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I
    invoke-static {v8}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 824
    .restart local v0    # "defColor":I
    .restart local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 825
    if-nez p2, :cond_8

    .line 826
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 827
    .restart local p2    # "view":Landroid/view/View;
    const/4 v7, -0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 829
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_9

    move-object v7, p2

    .line 830
    check-cast v7, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Header"

    const v10, 0x7f070349

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 831
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowsSection2Row:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    move-object v7, p2

    .line 832
    check-cast v7, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "OptionsList"

    const v10, 0x7f07050d

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 835
    :cond_a
    const/4 v7, 0x2

    if-ne v5, v7, :cond_16

    .line 836
    if-nez p2, :cond_b

    .line 837
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object v3, p2

    .line 839
    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 840
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_d

    .line 841
    const-string/jumbo v8, "drawerAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x23

    :goto_4
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 842
    .local v2, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarRadius"

    const v9, 0x7f0700c9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 841
    .end local v2    # "size":I
    :cond_c
    const/16 v7, 0x20

    goto :goto_4

    .line 843
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_f

    .line 844
    const-string/jumbo v8, "drawerAvatarSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x44

    :goto_5
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 845
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarSize"

    const v9, 0x7f0700ca

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 844
    .end local v2    # "size":I
    :cond_e
    const/16 v7, 0x40

    goto :goto_5

    .line 846
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_11

    .line 847
    const-string/jumbo v8, "drawerNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x11

    :goto_6
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 848
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OwnNameSize"

    const v9, 0x7f070512

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 847
    .end local v2    # "size":I
    :cond_10
    const/16 v7, 0xf

    goto :goto_6

    .line 849
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_12

    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OptionSize"

    const v9, 0x7f07050c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->drawerOptionSize:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 852
    :cond_12
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_14

    .line 853
    const-string/jumbo v8, "drawerPhoneSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0xf

    :goto_7
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 854
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "PhoneSize"

    const v9, 0x7f070579

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 853
    .end local v2    # "size":I
    :cond_13
    const/16 v7, 0xd

    goto :goto_7

    .line 855
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 856
    const-string/jumbo v8, "drawerVersionSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v7, 0xf

    :goto_8
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 857
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VersionSize"

    const v9, 0x7f070740

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 856
    .end local v2    # "size":I
    :cond_15
    const/16 v7, 0xd

    goto :goto_8

    .line 861
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_16
    const/4 v7, 0x3

    if-ne v5, v7, :cond_24

    .line 862
    if-nez p2, :cond_17

    .line 863
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    move-object v3, p2

    .line 866
    check-cast v3, Lorg/telegram/ui/Cells/TextColorCell;

    .line 868
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_18

    .line 869
    const-string/jumbo v7, "drawerHeaderColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 870
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HeaderColor"

    const v9, 0x7f07034a

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderColor:I

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 871
    :cond_18
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1a

    .line 872
    const-string/jumbo v7, "drawerHeaderGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 873
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientColor"

    const v9, 0x7f0705ff

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "drawerHeaderGradient"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_19

    const/4 v7, 0x0

    :goto_9
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v7, "drawerHeaderGradientColor"

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_9

    .line 874
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1b

    .line 875
    const-string/jumbo v7, "drawerListColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 876
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ListColor"

    const v9, 0x7f0703e9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerListColor"

    const/4 v9, -0x1

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 877
    :cond_1b
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1d

    .line 878
    const-string/jumbo v7, "drawerRowGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 879
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientColor"

    const v9, 0x7f0705ff

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "drawerRowGradient"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1c

    const/4 v7, 0x0

    :goto_a
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v7, "drawerRowGradientColor"

    const/4 v9, -0x1

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_a

    .line 880
    :cond_1d
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1e

    .line 881
    const-string/jumbo v7, "drawerListDividerColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 882
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ListDividerColor"

    const v9, 0x7f0703ea

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerListDividerColor"

    const v9, -0x262627

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 883
    :cond_1e
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1f

    .line 884
    const-string/jumbo v7, "drawerIconColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "IconColor"

    const v9, 0x7f070377

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerIconColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 886
    :cond_1f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_20

    .line 887
    const-string/jumbo v7, "drawerOptionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OptionColor"

    const v9, 0x7f07050b

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerOptionColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 889
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_21

    .line 890
    const-string/jumbo v7, "drawerVersionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VersionColor"

    const v9, 0x7f07073f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerVersionColor"

    const v9, -0x5c5c5d

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 892
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_22

    .line 893
    const-string/jumbo v7, "drawerAvatarColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 894
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarColor"

    const v9, 0x7f0700c7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerAvatarColor"

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 895
    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_23

    .line 896
    const-string/jumbo v7, "drawerNameColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 897
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "NameColor"

    const v9, 0x7f07044d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerNameColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 898
    :cond_23
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 899
    const-string/jumbo v7, "drawerPhoneColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "PhoneColor"

    const v9, 0x7f070570

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerPhoneColor"

    const-string/jumbo v9, "themeColor"

    const/16 v10, -0x40

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 902
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_24
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2a

    .line 903
    if-nez p2, :cond_25

    .line 904
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_25
    move-object v3, p2

    .line 906
    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 907
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerBackgroundCheckRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_26

    .line 908
    const-string/jumbo v7, "drawerHeaderBGCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 909
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HideBackground"

    const v9, 0x7f070355

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 910
    :cond_26
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->hideBackgroundShadowRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_27

    .line 911
    const-string/jumbo v7, "drawerHideBGShadowCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 912
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HideBackgroundShadow"

    const v9, 0x7f070356

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 913
    :cond_27
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->centerAvatarRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_28

    .line 914
    const-string/jumbo v7, "drawerCenterAvatarCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 915
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "CenterAvatar"

    const v9, 0x7f07010e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 916
    :cond_28
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientListCheckRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 917
    const-string/jumbo v7, "drawerRowGradientListCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 918
    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v6

    .line 919
    .local v6, "value":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientList"

    const v9, 0x7f070602

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_29

    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v7, "drawerRowGradientListCheck"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_b

    .line 921
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v6    # "value":I
    :cond_2a
    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 922
    if-nez p2, :cond_2b

    .line 923
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2b
    move-object v3, p2

    .line 925
    check-cast v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 927
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_30

    .line 928
    const-string/jumbo v7, "drawerHeaderGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 929
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 930
    const-string/jumbo v7, "drawerHeaderGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 931
    .restart local v6    # "value":I
    if-nez v6, :cond_2c

    .line 932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientDisabled"

    const v9, 0x7f070600

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 933
    :cond_2c
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    .line 934
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTopBottom"

    const v9, 0x7f070604

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 935
    :cond_2d
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2e

    .line 936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientLeftRight"

    const v9, 0x7f070601

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 937
    :cond_2e
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2f

    .line 938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTLBR"

    const v9, 0x7f070603

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 939
    :cond_2f
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientBLTR"

    const v9, 0x7f0705fe

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 942
    .end local v6    # "value":I
    :cond_30
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I
    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 943
    const-string/jumbo v7, "drawerRowGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 944
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 945
    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 946
    .restart local v6    # "value":I
    if-nez v6, :cond_31

    .line 947
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientDisabled"

    const v9, 0x7f070600

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 948
    :cond_31
    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTopBottom"

    const v9, 0x7f070604

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 950
    :cond_32
    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientLeftRight"

    const v9, 0x7f070601

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 952
    :cond_33
    const/4 v7, 0x3

    if-ne v6, v7, :cond_34

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTLBR"

    const v9, 0x7f070603

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 954
    :cond_34
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f0705fd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientBLTR"

    const v9, 0x7f0705fe

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 960
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v6    # "value":I
    :cond_35
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 963
    :cond_36
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 773
    const-string/jumbo v3, "drawerHeaderGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v1

    .line 774
    .local v1, "h":I
    const-string/jumbo v3, "drawerRowGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 775
    .local v0, "g":I
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerBackgroundCheckRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->hideBackgroundShadowRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->centerAvatarRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    .line 776
    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientListCheckRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    .line 777
    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-ne p1, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method
