.class Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlusSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1928
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1929
    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1930
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1934
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1962
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1967
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 2597
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2598
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2599
    :cond_0
    const/4 v0, 0x0

    .line 2625
    :cond_1
    :goto_0
    return v0

    .line 2600
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2601
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2602
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 2603
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2604
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2605
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2606
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2607
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2608
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2609
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2610
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2611
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2612
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2613
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2614
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 2615
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2616
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2617
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 2619
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2620
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 2621
    :cond_7
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2622
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2623
    :cond_9
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1977
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v25

    .line 1978
    .local v25, "type":I
    const-string/jumbo v12, ""

    .line 1979
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$000(Lorg/telegram/ui/PlusSettingsActivity;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1980
    const-string/jumbo v12, "P"

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1982
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "0 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2020
    :cond_0
    :goto_0
    if-nez v25, :cond_15

    .line 2021
    if-nez p2, :cond_1

    .line 2022
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 2589
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const/16 v27, 0x7

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 2590
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v27, :cond_a9

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2592
    :cond_2
    return-object p2

    .line 1983
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 1984
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "0."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1985
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 1986
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1987
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 1988
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "1."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1989
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1990
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "2 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1991
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 1992
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "2."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1993
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 1994
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "3 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1995
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 1996
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "3."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1997
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 1998
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "4 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1999
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 2000
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "4."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2001
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 2002
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "5 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2003
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 2004
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "5."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2005
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 2006
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "6 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2007
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 2008
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "6."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    sub-int v29, p1, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    const/16 v27, 0x0

    :goto_3
    sub-int v27, v29, v27

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_10
    const/16 v27, 0x1

    goto :goto_3

    .line 2009
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 2010
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "7 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2011
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 2012
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "7."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2013
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 2014
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "8 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2015
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 2016
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "8."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 2024
    :cond_15
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 2025
    if-nez p2, :cond_16

    .line 2026
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 2028
    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move-object/from16 v27, p2

    .line 2029
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "General"

    const v30, 0x7f070331

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2030
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    move-object/from16 v27, p2

    .line 2031
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "MessagesSettings"

    const v30, 0x7f07042c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2032
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v27, p2

    .line 2033
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ProfileScreen"

    const v30, 0x7f0705ac

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2034
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    move-object/from16 v27, p2

    .line 2035
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "NavigationDrawer"

    const v30, 0x7f070450

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2036
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v27, p2

    .line 2037
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "PrivacySettings"

    const v30, 0x7f0705a8

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2038
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v27, p2

    .line 2039
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "SharedMedia"

    const v30, 0x7f07067f

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2040
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v27, p2

    .line 2041
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "DialogsSettings"

    const v30, 0x7f07021c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2042
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    move-object/from16 v27, p2

    .line 2043
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->Notifications:Ljava/lang/String;

    const v30, 0x7f0704dc

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2044
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    move-object/from16 v27, p2

    .line 2045
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ToastNotification"

    const v30, 0x7f0706ef

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2046
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    move-object/from16 v27, p2

    .line 2047
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v28, "PlusSettings"

    const v29, 0x7f070591

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2049
    :cond_20
    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3d

    .line 2050
    if-nez p2, :cond_21

    .line 2051
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    move-object/from16 v23, p2

    .line 2053
    check-cast v23, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 2054
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2055
    .local v11, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 2056
    const-string/jumbo v27, "emojiPopupSize"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2057
    const-string/jumbo v28, "emojiPopupSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v27

    if-eqz v27, :cond_23

    const/16 v27, 0x41

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 2058
    .local v20, "size":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EmojiPopupSize"

    const v29, 0x7f070258

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2138
    .end local v20    # "size":I
    :cond_22
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2139
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SortTabs"

    const v29, 0x7f0706ac

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2057
    :cond_23
    const/16 v27, 0x3c

    goto/16 :goto_4

    .line 2059
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 2060
    const-string/jumbo v27, "photoQuality"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2061
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "PhotoQuality"

    const v29, 0x7f07057c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2062
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 2063
    const-string/jumbo v27, "chatsTabsTextSize"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2064
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsTextSize"

    const v29, 0x7f0706c9

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2065
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    .line 2066
    const-string/jumbo v27, "tabsHeight"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2068
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsHeight"

    const v29, 0x7f0706c8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2069
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 2070
    const-string/jumbo v27, "dialogsClickOnPic"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2072
    const-string/jumbo v27, "dialogsClickOnPic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2073
    .local v21, "sort":I
    if-nez v21, :cond_28

    .line 2074
    const-string/jumbo v27, "RowGradientDisabled"

    const v28, 0x7f070600

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2080
    .local v26, "value":Ljava/lang/String;
    :goto_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ClickOnContactPic"

    const v29, 0x7f07019c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2075
    .end local v26    # "value":Ljava/lang/String;
    :cond_28
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 2076
    const-string/jumbo v27, "ShowPics"

    const v28, 0x7f070693

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_6

    .line 2078
    .end local v26    # "value":Ljava/lang/String;
    :cond_29
    const-string/jumbo v27, "ShowProfile"

    const v28, 0x7f070694

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_6

    .line 2081
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d

    .line 2082
    const-string/jumbo v27, "dialogsClickOnGroupPic"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2084
    const-string/jumbo v27, "dialogsClickOnGroupPic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2085
    .restart local v21    # "sort":I
    if-nez v21, :cond_2b

    .line 2086
    const-string/jumbo v27, "RowGradientDisabled"

    const v28, 0x7f070600

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2092
    .restart local v26    # "value":Ljava/lang/String;
    :goto_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ClickOnGroupPic"

    const v29, 0x7f07019d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2087
    .end local v26    # "value":Ljava/lang/String;
    :cond_2b
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_2c

    .line 2088
    const-string/jumbo v27, "ShowPics"

    const v28, 0x7f070693

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_7

    .line 2090
    .end local v26    # "value":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v27, "ShowProfile"

    const v28, 0x7f070694

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_7

    .line 2093
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2e

    .line 2094
    const-string/jumbo v27, "toastNotificationSize"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2095
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationSize"

    const v29, 0x7f0706f2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2096
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f

    .line 2097
    const-string/jumbo v27, "toastNotificationPadding"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2098
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationPadding"

    const v29, 0x7f0706f0

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2099
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 2100
    const-string/jumbo v27, "toastNotificationPosition"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2102
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I

    .line 2103
    .restart local v21    # "sort":I
    if-nez v21, :cond_30

    .line 2104
    const-string/jumbo v27, "Left"

    const v28, 0x7f0703da

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2110
    .restart local v26    # "value":Ljava/lang/String;
    :goto_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationPosition"

    const v29, 0x7f0706f1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2105
    .end local v26    # "value":Ljava/lang/String;
    :cond_30
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_31

    .line 2106
    const-string/jumbo v27, "Center"

    const v28, 0x7f07010d

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_8

    .line 2108
    .end local v26    # "value":Ljava/lang/String;
    :cond_31
    const-string/jumbo v27, "Right"

    const v28, 0x7f0705fa

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_8

    .line 2111
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 2112
    const-string/jumbo v27, "chatsToLoad"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 2113
    const-string/jumbo v24, "Chats to load"

    .line 2114
    .local v24, "title":Ljava/lang/String;
    const-string/jumbo v27, "chatsToLoad"

    const/16 v28, 0x64

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2115
    .local v26, "value":I
    const/16 v27, 0x32

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_33

    .line 2116
    const-string/jumbo v27, "50"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2117
    :cond_33
    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    .line 2118
    const-string/jumbo v27, "100"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2119
    :cond_34
    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_35

    .line 2120
    const-string/jumbo v27, "200"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2121
    :cond_35
    const/16 v27, 0x12c

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_36

    .line 2122
    const-string/jumbo v27, "300"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2123
    :cond_36
    const/16 v27, 0x190

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37

    .line 2124
    const-string/jumbo v27, "400"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2125
    :cond_37
    const/16 v27, 0x1f4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    .line 2126
    const-string/jumbo v27, "500"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2127
    :cond_38
    const/16 v27, 0x2ee

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_39

    .line 2128
    const-string/jumbo v27, "750"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2129
    :cond_39
    const/16 v27, 0x3e8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 2130
    const-string/jumbo v27, "1000"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2131
    :cond_3a
    const/16 v27, 0x5dc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b

    .line 2132
    const-string/jumbo v27, "1500"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2133
    :cond_3b
    const/16 v27, 0x7d0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3c

    .line 2134
    const-string/jumbo v27, "2000"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2135
    :cond_3c
    const v27, 0xf4240

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 2136
    const-string/jumbo v27, "All"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2141
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v24    # "title":Ljava/lang/String;
    .end local v26    # "value":I
    :cond_3d
    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_76

    .line 2142
    if-nez p2, :cond_3e

    .line 2143
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_3e
    move-object/from16 v23, p2

    .line 2145
    check-cast v23, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 2147
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2148
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f

    .line 2149
    const-string/jumbo v27, "disableAudioStop"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2150
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableAudioStop"

    const v29, 0x7f070223

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "disableAudioStop"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2151
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_40

    .line 2152
    const-string/jumbo v27, "disableMessageClick"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2153
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableMessageClick"

    const v29, 0x7f070224

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "disableMessageClick"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2154
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_41

    .line 2155
    const-string/jumbo v27, "directShareReplies"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2156
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareReplies"

    const v29, 0x7f070220

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareReplies"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2157
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_42

    .line 2158
    const-string/jumbo v27, "directShareToMenu"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2159
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareToMenu"

    const v29, 0x7f070222

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareToMenu"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2160
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_43

    .line 2161
    const-string/jumbo v27, "directShareFavsFirst"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2162
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareShowFavsFirst"

    const v29, 0x7f070221

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareFavsFirst"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2163
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_44

    .line 2164
    const-string/jumbo v27, "showEditedMark"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2165
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowEditedMark"

    const v29, 0x7f07068b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showEditedMark"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2166
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_45

    .line 2167
    const-string/jumbo v27, "showDateToast"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2168
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowDateToast"

    const v29, 0x7f070689

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showDateToast"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2169
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_46

    .line 2170
    const-string/jumbo v27, "hideLeftGroup"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2171
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideLeftGroup"

    const v29, 0x7f07035a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideLeftGroup"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2172
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_47

    .line 2173
    const-string/jumbo v27, "hideJoinedGroup"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2174
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideJoinedGroup"

    const v29, 0x7f070359

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideJoinedGroup"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2175
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_48

    .line 2176
    const-string/jumbo v27, "hideBotKeyboard"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2177
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideBotKeyboard"

    const v29, 0x7f070357

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideBotKeyboard"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2178
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_49

    .line 2179
    const-string/jumbo v27, "keepOriginalFilename"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2180
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "KeepOriginalFilename"

    const v29, 0x7f0703a9

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "keepOriginalFilename"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2181
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4a

    .line 2182
    const-string/jumbo v27, "showAndroidEmoji"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2183
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowAndroidEmoji"

    const v29, 0x7f070687

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showAndroidEmoji"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2184
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b

    .line 2185
    const-string/jumbo v27, "useDeviceFont"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2186
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "UseDeviceFont"

    const v29, 0x7f07070f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "useDeviceFont"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2187
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4c

    .line 2188
    const-string/jumbo v27, "hideTabs"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2189
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideTabs"

    const v29, 0x7f070363

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2190
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4d

    .line 2191
    const-string/jumbo v27, "disableTabsAnimation"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2192
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableTabsAnimation"

    const v29, 0x7f070225

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2193
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4e

    .line 2194
    const-string/jumbo v27, "chatsTabTitlesMode"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2195
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowTabTitle"

    const v29, 0x7f070697

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2196
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4f

    .line 2197
    const-string/jumbo v27, "tabsShouldExpand"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2198
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "FitTabsToScreen"

    const v29, 0x7f0702d8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2199
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_50

    .line 2200
    const-string/jumbo v27, "tabsToBottom"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2201
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsToBottom"

    const v29, 0x7f0706ca

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "tabsToBottom"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2202
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_51

    .line 2203
    const-string/jumbo v27, "disableTabsScrolling"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2204
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableTabsScrolling"

    const v29, 0x7f070226

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2205
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_52

    .line 2206
    const-string/jumbo v27, "hideSelectedTabIndicator"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2207
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideSelectedTabIndicator"

    const v29, 0x7f07035e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideSelectedTabIndicator"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2208
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_53

    .line 2209
    const-string/jumbo v27, "infiniteTabsSwipe"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2210
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "InfiniteSwipe"

    const v29, 0x7f070382

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2211
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_54

    .line 2212
    const-string/jumbo v27, "hideTabsCounters"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2213
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideTabsCounters"

    const v29, 0x7f070364

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2214
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_55

    .line 2215
    const-string/jumbo v27, "tabsCountersCountChats"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2216
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HeaderTabCounterCountChats"

    const v29, 0x7f07034e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2217
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_56

    .line 2218
    const-string/jumbo v27, "tabsCountersCountNotMuted"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2219
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HeaderTabCounterCountNotMuted"

    const v29, 0x7f07034f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2220
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_57

    .line 2221
    const-string/jumbo v27, "hideMobile"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2222
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideMobile"

    const v29, 0x7f07035b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2223
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_58

    .line 2224
    const-string/jumbo v27, "showUsername"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2225
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowUsernameInMenu"

    const v29, 0x7f07069c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2226
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_59

    .line 2227
    const-string/jumbo v27, "invertMessagesOrder"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2228
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "InvertMessageOrder"

    const v29, 0x7f07038c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "invertMessagesOrder"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2229
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5a

    .line 2230
    const-string/jumbo v27, "searchOnTwitter"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2231
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SearchUserOnTwitter"

    const v29, 0x7f070624

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "searchOnTwitter"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2232
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b

    .line 2233
    const-string/jumbo v27, "showPhotoQualityBar"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2234
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowPhotoQualityBar"

    const v29, 0x7f070692

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2235
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5c

    .line 2236
    const-string/jumbo v27, "showTypingToast"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2237
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowTypingToast"

    const v29, 0x7f070698

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2238
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5d

    .line 2239
    const-string/jumbo v27, "toastNotificationToBottom"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2240
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationToBottom"

    const v29, 0x7f0706f3

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2241
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5e

    .line 2242
    const-string/jumbo v27, "plusShowOnlineToast"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2243
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOnlineToast"

    const v29, 0x7f07068e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2244
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5f

    .line 2245
    const-string/jumbo v27, "showOnlyIfContactFav"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2246
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOnlyIfContactFav"

    const v29, 0x7f07068f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2247
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_60

    .line 2248
    const-string/jumbo v27, "showOfflineToast"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2249
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOfflineToast"

    const v29, 0x7f07068d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2250
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_61

    .line 2251
    const-string/jumbo v27, "plusHideNotificationsIfPlaying"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2252
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "OverrideNotificationsIfPlaying"

    const v29, 0x7f070510

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2253
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_62

    .line 2254
    const-string/jumbo v27, "enableDirectReply"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2255
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EnableDirectReply"

    const v29, 0x7f07025f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2256
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_63

    .line 2257
    const-string/jumbo v27, "showQuickBar"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2258
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowQuickBar"

    const v29, 0x7f070695

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2259
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_64

    .line 2260
    const-string/jumbo v27, "verticalQuickBar"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2261
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "VerticalQuickBar"

    const v29, 0x7f070741

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2263
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_65

    .line 2264
    const-string/jumbo v27, "alwaysBackToMain"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2265
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "AlwaysBackToMain"

    const v29, 0x7f07006c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2267
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_66

    .line 2268
    const-string/jumbo v27, "doNotCloseQuickBar"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2269
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotCloseQuickBar"

    const v29, 0x7f070231

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2271
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_67

    .line 2272
    const-string/jumbo v27, "hideQuickBarOnScroll"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2273
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideQuickBarOnScroll"

    const v29, 0x7f07035d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2275
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_68

    .line 2276
    const-string/jumbo v27, "centerQuickBarBtn"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2277
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "CenterQuickBarButton"

    const v29, 0x7f07010f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2279
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_69

    .line 2280
    const-string/jumbo v27, "quickBarShowMembers"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2281
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowMembersOnQuickBar"

    const v29, 0x7f07068c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2283
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6a

    .line 2284
    const-string/jumbo v27, "saveToCloudQuote"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2285
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SaveToCloudQuote"

    const v29, 0x7f070611

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2286
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6b

    .line 2287
    const-string/jumbo v27, "plusSwipeToReply"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2288
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SwipeToReply"

    const v29, 0x7f0706c4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2289
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6c

    .line 2290
    const-string/jumbo v27, "hideInstantCamera"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2291
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideInstantCamera"

    const v29, 0x7f070358

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2292
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6d

    .line 2293
    const-string/jumbo v27, "doNotHideStickersTab"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2294
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotHideStickersTab"

    const v29, 0x7f070232

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2295
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e

    .line 2296
    const-string/jumbo v27, "photoViewerHideStatusBar"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2297
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideStatusBar"

    const v29, 0x7f070360

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2298
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6f

    .line 2299
    const-string/jumbo v27, "profileEnableGoToMsg"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2300
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EnableGoToMessage"

    const v29, 0x7f070260

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2301
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_70

    .line 2302
    const-string/jumbo v27, "doNotChangeHeaderTitle"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2303
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotChangeHeaderTitle"

    const v29, 0x7f0707c1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2304
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_71

    .line 2305
    const-string/jumbo v27, "plusDrawSingleBigEmoji"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2306
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EmojiBigSize"

    const v29, 0x7f070257

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2307
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_72

    .line 2308
    const-string/jumbo v27, "plusLimitTabsCounters"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2309
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "LimitTabsCounter"

    const v29, 0x7f0703db

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2310
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_73

    .line 2311
    const-string/jumbo v27, "enableMarkdown"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2312
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Markdown"

    const v29, 0x7f070403

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2313
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_74

    .line 2314
    const-string/jumbo v27, "moveVersionToSettings"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2315
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "MoveVersionToSettings"

    const v29, 0x7f0707c6

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusMoveVersionToSettings:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2316
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_75

    .line 2317
    const-string/jumbo v27, "showAllInAdminTab"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2318
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowAllInAdminTab"

    const v29, 0x7f0707ca

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowAllInAdminTab:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2319
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2320
    const-string/jumbo v27, "showUserBio"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 2321
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowUserBio"

    const v29, 0x7f0707d1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowUserBio:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2323
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_76
    const/16 v27, 0x6

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a4

    .line 2324
    if-nez p2, :cond_77

    .line 2325
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_77
    move-object/from16 v23, p2

    .line 2327
    check-cast v23, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 2329
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_86

    .line 2340
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideShowTabs"

    const v29, 0x7f07035f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2342
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2343
    .local v22, "text":Ljava/lang/String;
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    if-nez v27, :cond_78

    .line 2344
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "All"

    const v29, 0x7f070062

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2346
    :cond_78
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-nez v27, :cond_7a

    .line 2347
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_79

    .line 2348
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2350
    :cond_79
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Users"

    const v29, 0x7f070738

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2352
    :cond_7a
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-nez v27, :cond_7c

    .line 2353
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7b

    .line 2354
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2356
    :cond_7b
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Groups"

    const v29, 0x7f070343

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2358
    :cond_7c
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v27, :cond_7e

    .line 2359
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7d

    .line 2360
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2362
    :cond_7d
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SuperGroups"

    const v29, 0x7f0706c2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2364
    :cond_7e
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-nez v27, :cond_80

    .line 2365
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7f

    .line 2366
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2368
    :cond_7f
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Channels"

    const v29, 0x7f070175

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2370
    :cond_80
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-nez v27, :cond_82

    .line 2371
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_81

    .line 2372
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2374
    :cond_81
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Bots"

    const v29, 0x7f0700e7

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2376
    :cond_82
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-nez v27, :cond_84

    .line 2377
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_83

    .line 2378
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2380
    :cond_83
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Favorites"

    const v29, 0x7f0702ce

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2382
    :cond_84
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_85

    .line 2383
    const-string/jumbo v22, ""

    .line 2385
    :cond_85
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2386
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_91

    .line 2388
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2389
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v27, "showDSBtnUsers"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 2390
    .local v17, "showDSBtnUsers":Z
    const-string/jumbo v27, "showDSBtnGroups"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2391
    .local v15, "showDSBtnGroups":Z
    const-string/jumbo v27, "showDSBtnSGroups"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 2392
    .local v16, "showDSBtnSGroups":Z
    const-string/jumbo v27, "showDSBtnChannels"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 2393
    .local v14, "showDSBtnChannels":Z
    const-string/jumbo v27, "showDSBtnBots"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2395
    .local v13, "showDSBtnBots":Z
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowDirectShareButton"

    const v29, 0x7f07068a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2397
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2398
    .restart local v22    # "text":Ljava/lang/String;
    if-eqz v17, :cond_87

    .line 2399
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Users"

    const v29, 0x7f070738

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2401
    :cond_87
    if-eqz v15, :cond_89

    .line 2402
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_88

    .line 2403
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2405
    :cond_88
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Groups"

    const v29, 0x7f070343

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2407
    :cond_89
    if-eqz v16, :cond_8b

    .line 2408
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_8a

    .line 2409
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2411
    :cond_8a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SuperGroups"

    const v29, 0x7f0706c2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2413
    :cond_8b
    if-eqz v14, :cond_8d

    .line 2414
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_8c

    .line 2415
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2417
    :cond_8c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Channels"

    const v29, 0x7f070175

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2419
    :cond_8d
    if-eqz v13, :cond_8f

    .line 2420
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_8e

    .line 2421
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2423
    :cond_8e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Bots"

    const v29, 0x7f0700e7

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2426
    :cond_8f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_90

    .line 2427
    const-string/jumbo v27, "Channels"

    const v28, 0x7f07072f

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 2429
    :cond_90
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2430
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "showDSBtnBots":Z
    .end local v14    # "showDSBtnChannels":Z
    .end local v15    # "showDSBtnGroups":Z
    .end local v16    # "showDSBtnSGroups":Z
    .end local v17    # "showDSBtnUsers":Z
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9a

    .line 2432
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2434
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v27, "hideSharedMedia"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2435
    .local v9, "hideMedia":Z
    const-string/jumbo v27, "hideSharedFiles"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2436
    .local v7, "hideFiles":Z
    const-string/jumbo v27, "hideSharedMusic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2437
    .local v10, "hideMusic":Z
    const-string/jumbo v27, "hideSharedLinks"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2439
    .local v8, "hideLinks":Z
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SharedMedia"

    const v29, 0x7f07067f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2441
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2442
    .restart local v22    # "text":Ljava/lang/String;
    if-nez v9, :cond_92

    .line 2443
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SharedMediaTitle"

    const v29, 0x7f070680

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2445
    :cond_92
    if-nez v7, :cond_94

    .line 2446
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_93

    .line 2447
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2449
    :cond_93
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DocumentsTitle"

    const v29, 0x7f070233

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2451
    :cond_94
    if-nez v10, :cond_96

    .line 2452
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_95

    .line 2453
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2455
    :cond_95
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "AudioTitle"

    const v29, 0x7f0700bd

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2457
    :cond_96
    if-nez v8, :cond_98

    .line 2458
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_97

    .line 2459
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2461
    :cond_97
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "LinksTitle"

    const v29, 0x7f0703e8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2464
    :cond_98
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_99

    .line 2465
    const-string/jumbo v22, ""

    .line 2467
    :cond_99
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2528
    .end local v7    # "hideFiles":Z
    .end local v8    # "hideLinks":Z
    .end local v9    # "hideMedia":Z
    .end local v10    # "hideMusic":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a1

    .line 2530
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2532
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const/4 v6, 0x1

    .line 2533
    .local v6, "VERSION":I
    const/4 v5, 0x2

    .line 2539
    .local v5, "LANGUAGE":I
    const-string/jumbo v27, "showMySettings"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2540
    .local v4, "FLAGS":I
    and-int/lit8 v27, v4, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9f

    const/16 v19, 0x1

    .line 2541
    .local v19, "showVersion":Z
    :goto_9
    and-int/lit8 v27, v4, 0x2

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a0

    const/16 v18, 0x1

    .line 2547
    .local v18, "showLanguage":Z
    :goto_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowMySettings"

    const v29, 0x7f07081c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2549
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2550
    .restart local v22    # "text":Ljava/lang/String;
    if-eqz v19, :cond_9b

    .line 2551
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "PlusVersion"

    const v29, 0x7f07081a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2553
    :cond_9b
    if-eqz v18, :cond_9d

    .line 2554
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_9c

    .line 2555
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2557
    :cond_9c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Language"

    const v29, 0x7f0703b2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2560
    :cond_9d
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_9e

    .line 2561
    const-string/jumbo v22, ""

    .line 2563
    :cond_9e
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2540
    .end local v18    # "showLanguage":Z
    .end local v19    # "showVersion":Z
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_9f
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 2541
    .restart local v19    # "showVersion":Z
    :cond_a0
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 2564
    .end local v4    # "FLAGS":I
    .end local v5    # "LANGUAGE":I
    .end local v6    # "VERSION":I
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "showVersion":Z
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a2

    .line 2565
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2566
    const-string/jumbo v27, "SaveSettings"

    const v28, 0x7f07060b

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "SaveSettingsSum"

    const v30, 0x7f07060c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "AlsoFavorites"

    const v30, 0x7f070069

    .line 2567
    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    .line 2566
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2568
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a3

    .line 2569
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2570
    const-string/jumbo v27, "RestoreSettings"

    const v28, 0x7f0705ee

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "RestoreSettingsSum"

    const v29, 0x7f0705ef

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2571
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2572
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2573
    const-string/jumbo v27, "ResetSettings"

    const v28, 0x7f0705e1

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "ResetSettingsSum"

    const v29, 0x7f0705e2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2575
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_a4
    const/16 v27, 0x7

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2576
    if-nez p2, :cond_a5

    .line 2577
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 2579
    .restart local p2    # "view":Landroid/view/View;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a7

    move-object/from16 v27, p2

    .line 2580
    check-cast v27, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v28, "KeepOriginalFilenameHelp"

    const v29, 0x7f0703aa

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2586
    :cond_a6
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f0200ac

    const-string/jumbo v29, "windowBackgroundGrayShadow"

    invoke-static/range {v27 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2587
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v27, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 2581
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a8

    move-object/from16 v27, p2

    .line 2582
    check-cast v27, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v28, "OnlineToastHelp"

    const v29, 0x7f070501

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 2583
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a6

    move-object/from16 v27, p2

    .line 2584
    check-cast v27, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v28, "ShowAllInAdminTabHelp"

    const v29, 0x7f0707cb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 2590
    :cond_a9
    const-string/jumbo v27, "windowBackgroundWhite"

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2631
    const/16 v0, 0x8

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2636
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1940
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1941
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1942
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1943
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1944
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1945
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1946
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1947
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1948
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1949
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1950
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1951
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1952
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

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
