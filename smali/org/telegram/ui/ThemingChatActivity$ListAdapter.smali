.class Lorg/telegram/ui/ThemingChatActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1604
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1605
    iput-object p2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1606
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1633
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1638
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 1990
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1991
    const/4 v0, 0x0

    .line 2013
    :cond_0
    :goto_0
    return v0

    .line 1993
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1994
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1996
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 2000
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 2001
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 2002
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 2003
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 2004
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 2005
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 2006
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2007
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 2008
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 2009
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2010
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1648
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 1649
    .local v8, "type":I
    const-string/jumbo v4, ""

    .line 1650
    .local v4, "prefix":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$000(Lorg/telegram/ui/ThemingChatActivity;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1651
    const-string/jumbo v4, "2."

    .line 1652
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 1653
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1662
    :cond_0
    :goto_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1663
    .local v7, "themePrefs":Landroid/content/SharedPreferences;
    if-nez v8, :cond_6

    .line 1664
    if-nez p2, :cond_1

    .line 1665
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1982
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 1983
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v10, :cond_77

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1985
    :cond_2
    return-object p2

    .line 1654
    .end local v7    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 1655
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1656
    :cond_4
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ge v0, v10, :cond_5

    .line 1657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1659
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v11

    sub-int v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1668
    .restart local v7    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    .line 1669
    if-nez p2, :cond_7

    .line 1670
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1671
    .restart local p2    # "view":Landroid/view/View;
    const/4 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1673
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_8

    move-object/from16 v10, p2

    .line 1674
    check-cast v10, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Header"

    const v13, 0x7f070349

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1675
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    move-object/from16 v10, p2

    .line 1676
    check-cast v10, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ChatList"

    const v13, 0x7f07017c

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1679
    :cond_9
    const/4 v10, 0x2

    if-ne v8, v10, :cond_1f

    .line 1680
    if-nez p2, :cond_a

    .line 1681
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v6, p2

    .line 1683
    check-cast v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1684
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_c

    .line 1685
    const-string/jumbo v10, "chatHeaderAvatarRadius"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1686
    const-string/jumbo v11, "chatHeaderAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x23

    :goto_3
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1687
    .local v5, "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarRadius"

    const v12, 0x7f0700c9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1686
    .end local v5    # "size":I
    :cond_b
    const/16 v10, 0x20

    goto :goto_3

    .line 1688
    :cond_c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_e

    .line 1689
    const-string/jumbo v10, "chatAvatarRadius"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1690
    const-string/jumbo v11, "chatAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x23

    :goto_4
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1691
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarRadius"

    const v12, 0x7f0700c9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1690
    .end local v5    # "size":I
    :cond_d
    const/16 v10, 0x20

    goto :goto_4

    .line 1692
    :cond_e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_10

    .line 1693
    const-string/jumbo v10, "chatAvatarSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1694
    const-string/jumbo v11, "chatAvatarSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v10, 0x2d

    :goto_5
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1695
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarSize"

    const v12, 0x7f0700ca

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1694
    .end local v5    # "size":I
    :cond_f
    const/16 v10, 0x2a

    goto :goto_5

    .line 1696
    :cond_10
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_11

    .line 1697
    const-string/jumbo v10, "chatAvatarMarginLeft"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1698
    const-string/jumbo v10, "chatAvatarMarginLeft"

    const/4 v11, 0x6

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1699
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarMarginLeft"

    const v12, 0x7f0700c8

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1700
    .end local v5    # "size":I
    :cond_11
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_13

    .line 1701
    const-string/jumbo v10, "chatNameSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1702
    const-string/jumbo v11, "chatNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_12

    const/16 v10, 0x14

    :goto_6
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1703
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NameSize"

    const v12, 0x7f07044e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1702
    .end local v5    # "size":I
    :cond_12
    const/16 v10, 0x12

    goto :goto_6

    .line 1704
    :cond_13
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_15

    .line 1705
    const-string/jumbo v10, "chatStatusSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1706
    const-string/jumbo v11, "chatStatusSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_14

    const/16 v10, 0x10

    :goto_7
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1707
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "StatusSize"

    const v12, 0x7f0706b3

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1706
    .end local v5    # "size":I
    :cond_14
    const/16 v10, 0xe

    goto :goto_7

    .line 1708
    :cond_15
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_17

    .line 1709
    const-string/jumbo v10, "chatTextSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1710
    const-string/jumbo v11, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_16

    const/16 v10, 0x12

    :goto_8
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1711
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TextSize"

    const v12, 0x7f0706d6

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1710
    .end local v5    # "size":I
    :cond_16
    const/16 v10, 0x10

    goto :goto_8

    .line 1712
    :cond_17
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_19

    .line 1713
    const-string/jumbo v10, "chatTimeSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1714
    const-string/jumbo v11, "chatTimeSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_18

    const/16 v10, 0xe

    :goto_9
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1715
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TimeSize"

    const v12, 0x7f0706e2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1714
    .end local v5    # "size":I
    :cond_18
    const/16 v10, 0xc

    goto :goto_9

    .line 1716
    :cond_19
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1b

    .line 1717
    const-string/jumbo v10, "chatDateSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1718
    const-string/jumbo v11, "chatDateSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1a

    const/16 v10, 0x12

    :goto_a
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1719
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "DateSize"

    const v12, 0x7f0701ed

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1718
    .end local v5    # "size":I
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->fontSize:I

    add-int/lit8 v10, v10, -0x2

    goto :goto_a

    .line 1720
    :cond_1b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1d

    .line 1721
    const-string/jumbo v10, "chatEditTextSize"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1722
    const-string/jumbo v11, "chatEditTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/16 v10, 0x14

    :goto_b
    invoke-interface {v7, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1723
    .restart local v5    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EditTextSize"

    const v12, 0x7f070251

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1722
    .end local v5    # "size":I
    :cond_1c
    const/16 v10, 0x12

    goto :goto_b

    .line 1724
    :cond_1d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1e

    .line 1725
    const-string/jumbo v10, "chatBubbleStyle"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1726
    const-string/jumbo v10, "chatBubbleStyle"

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->bubblesNamesArray:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/ui/ActionBar/Theme;->chatBubbleStyle:Ljava/lang/String;

    .line 1727
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "BubbleStyle"

    const v12, 0x7f0700e8

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chatBubbleStyle:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1728
    :cond_1e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1729
    const-string/jumbo v10, "chatCheckStyle"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1730
    const-string/jumbo v10, "chatCheckStyle"

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->checksNamesArray:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/telegram/ui/ActionBar/Theme;->chatCheckStyle:Ljava/lang/String;

    .line 1731
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CheckStyle"

    const v12, 0x7f07018b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chatCheckStyle:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1733
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_1f
    const/4 v10, 0x4

    if-ne v8, v10, :cond_2a

    .line 1734
    if-nez p2, :cond_20

    .line 1735
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    move-object/from16 v6, p2

    .line 1737
    check-cast v6, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1738
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_21

    .line 1739
    const-string/jumbo v10, "chatSolidBGColorCheck"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1740
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SetSolidBGColor"

    const v12, 0x7f07066b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1741
    :cond_21
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_22

    .line 1742
    const-string/jumbo v10, "chatCommandColorCheck"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1743
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CommandColorCheck"

    const v12, 0x7f0701ae

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatCommandColorCheck"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1744
    :cond_22
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_23

    .line 1745
    const-string/jumbo v10, "chatMemberColorCheck"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1746
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SetMemberColor"

    const v12, 0x7f070669

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1747
    :cond_23
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_24

    .line 1748
    const-string/jumbo v10, "chatShowUsernameCheck"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1749
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ShowUsername"

    const v12, 0x7f07069b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1750
    :cond_24
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_25

    .line 1751
    const-string/jumbo v10, "chatAvatarAlignTop"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarAlignTop"

    const v12, 0x7f0700c6

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1753
    :cond_25
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_26

    .line 1754
    const-string/jumbo v10, "chatOwnAvatarAlignTop"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1755
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OwnAvatarAlignTop"

    const v12, 0x7f070511

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1756
    :cond_26
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_27

    .line 1757
    const-string/jumbo v10, "chatShowContactAvatar"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1758
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ShowContactAvatar"

    const v12, 0x7f070688

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1759
    :cond_27
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_28

    .line 1760
    const-string/jumbo v10, "chatShowOwnAvatar"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1761
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ShowOwnAvatar"

    const v12, 0x7f070690

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1762
    :cond_28
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_29

    .line 1763
    const-string/jumbo v10, "chatShowOwnAvatarGroup"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1764
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ShowOwnAvatarGroup"

    const v12, 0x7f070691

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1765
    :cond_29
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1766
    const-string/jumbo v10, "chatHideStatusIndicator"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1767
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HideStatusIndicator"

    const v12, 0x7f070361

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1770
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_2a
    const/4 v10, 0x3

    if-ne v8, v10, :cond_5d

    .line 1771
    if-nez p2, :cond_2b

    .line 1772
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2b
    move-object/from16 v6, p2

    .line 1775
    check-cast v6, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1777
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    const-string/jumbo v10, "themeColor"

    const v11, -0xab8a62

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1778
    .local v2, "defColor":I
    const-string/jumbo v10, "themeColor"

    const/16 v11, 0x15

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v1

    .line 1779
    .local v1, "darkColor":I
    const-string/jumbo v10, "themeColor"

    const/16 v11, -0x40

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v3

    .line 1780
    .local v3, "lightColor":I
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2c

    .line 1781
    const-string/jumbo v10, "chatHeaderColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1782
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderColor"

    const v12, 0x7f07034a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatHeaderColor"

    invoke-interface {v7, v11, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1783
    :cond_2c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2e

    .line 1784
    const-string/jumbo v10, "chatHeaderGradientColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1785
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatHeaderGradient"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_2d

    const/4 v10, 0x0

    :goto_c
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_2d
    const-string/jumbo v10, "chatHeaderGradientColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_c

    .line 1786
    :cond_2e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2f

    .line 1787
    const-string/jumbo v10, "chatHeaderIconsColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1788
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderIconsColor"

    const v12, 0x7f07034b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatHeaderIconsColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1789
    :cond_2f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_31

    .line 1790
    const-string/jumbo v10, "chatSolidBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1791
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SolidBGColor"

    const v12, 0x7f0706a5

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v10, :cond_30

    const-string/jumbo v10, "chatSolidBGColor"

    const/4 v12, -0x1

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    :goto_d
    const/4 v12, 0x0

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_30
    const/4 v10, 0x0

    goto :goto_d

    .line 1792
    :cond_31
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_34

    .line 1793
    const-string/jumbo v10, "chatGradientBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1794
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatGradientBG"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_32

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-nez v10, :cond_33

    :cond_32
    const/4 v10, 0x0

    :goto_e
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v10, "chatGradientBGColor"

    const/4 v12, -0x1

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_e

    .line 1795
    :cond_34
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_36

    .line 1796
    const-string/jumbo v10, "chatMemberColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1797
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MemberColor"

    const v12, 0x7f070414

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatMemberColorCheck"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_35

    const-string/jumbo v10, "chatMemberColor"

    invoke-interface {v7, v10, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    :goto_f
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_35
    const/4 v10, 0x0

    goto :goto_f

    .line 1798
    :cond_36
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_37

    .line 1799
    const-string/jumbo v10, "chatContactNameColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1800
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SharedContactNameColor"

    const v12, 0x7f07067e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatContactNameColor"

    invoke-interface {v7, v11, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1801
    :cond_37
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_38

    .line 1802
    const-string/jumbo v10, "chatForwardRColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1803
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ForwardRightNameColor"

    const v12, 0x7f0702e6

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatForwardRColor"

    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1804
    :cond_38
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_39

    .line 1805
    const-string/jumbo v10, "chatForwardLColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1806
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ForwardLeftNameColor"

    const v12, 0x7f0702e1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatForwardLColor"

    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1807
    :cond_39
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3a

    .line 1808
    const-string/jumbo v10, "chatMuteColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1809
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MuteColor"

    const v12, 0x7f070448

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatMuteColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1810
    :cond_3a
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3b

    .line 1811
    const-string/jumbo v10, "chatRBubbleColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RBubbleColor"

    const v12, 0x7f0705b3

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatRBubbleColor"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getDefBubbleColor()I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1813
    :cond_3b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3c

    .line 1814
    const-string/jumbo v10, "chatLBubbleColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1815
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "LBubbleColor"

    const v12, 0x7f0703ae

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatLBubbleColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1816
    :cond_3c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3d

    .line 1817
    const-string/jumbo v10, "chatRTextColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1818
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RTextColor"

    const v12, 0x7f0705b5

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatRTextColor"

    const/high16 v12, -0x1000000

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1819
    :cond_3d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3e

    .line 1820
    const-string/jumbo v10, "chatLTextColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1821
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "LTextColor"

    const v12, 0x7f0703b0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatLTextColor"

    const/high16 v12, -0x1000000

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1822
    :cond_3e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3f

    .line 1823
    const-string/jumbo v10, "chatSelectedMsgBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1824
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SelectedMsgBGColor"

    const v12, 0x7f07063b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatSelectedMsgBGColor"

    const v12, 0x6626a69a

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1825
    :cond_3f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_40

    .line 1826
    const-string/jumbo v10, "chatRLinkColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1827
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RLinkColor"

    const v12, 0x7f0705b4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatRLinkColor"

    invoke-interface {v7, v11, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1828
    :cond_40
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_41

    .line 1829
    const-string/jumbo v10, "chatLLinkColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1830
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "LLinkColor"

    const v12, 0x7f0703af

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatLLinkColor"

    invoke-interface {v7, v11, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1831
    :cond_41
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_42

    .line 1832
    const-string/jumbo v10, "chatNameColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1833
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NameColor"

    const v12, 0x7f07044d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatNameColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1834
    :cond_42
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_43

    .line 1835
    const-string/jumbo v10, "chatStatusColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1836
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "StatusColor"

    const v12, 0x7f0706b2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatStatusColor"

    invoke-interface {v7, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1837
    :cond_43
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_44

    .line 1838
    const-string/jumbo v10, "chatOnlineColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1839
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "OnlineColor"

    const v12, 0x7f0704fa

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatOnlineColor"

    const-string/jumbo v12, "chatStatusColor"

    invoke-interface {v7, v12, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1840
    :cond_44
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_45

    .line 1841
    const-string/jumbo v10, "chatTypingColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1842
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TypingColor"

    const v12, 0x7f0706fc

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatTypingColor"

    const-string/jumbo v12, "chatStatusColor"

    invoke-interface {v7, v12, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1843
    :cond_45
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_46

    .line 1844
    const-string/jumbo v10, "chatRTimeColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1845
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RTimeColor"

    const v12, 0x7f0705b6

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatRTimeColor"

    invoke-interface {v7, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1846
    :cond_46
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_47

    .line 1847
    const-string/jumbo v10, "chatLTimeColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1848
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "LTimeColor"

    const v12, 0x7f0703b1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatLTimeColor"

    const v12, -0x5e554d

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1849
    :cond_47
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_48

    .line 1850
    const-string/jumbo v10, "chatChecksColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1851
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ChecksColor"

    const v12, 0x7f07018c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatChecksColor"

    invoke-interface {v7, v11, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1852
    :cond_48
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4a

    .line 1853
    const-string/jumbo v10, "chatCommandColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1854
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CommandColor"

    const v12, 0x7f0701ad

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatCommandColorCheck"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_49

    const-string/jumbo v10, "chatCommandColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    :goto_10
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_49
    const/4 v10, 0x0

    goto :goto_10

    .line 1855
    :cond_4a
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4b

    .line 1856
    const-string/jumbo v10, "chatDateColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1857
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "DateColor"

    const v12, 0x7f0701ec

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatDateColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1858
    :cond_4b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4c

    .line 1859
    const-string/jumbo v10, "chatDateBubbleColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1860
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "DateBubbleColor"

    const v12, 0x7f0701eb

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatDateBubbleColor"

    const v12, 0x66768993

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1861
    :cond_4c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4d

    .line 1862
    const-string/jumbo v10, "chatSendIconColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1863
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "SendIcon"

    const v12, 0x7f070644

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatSendIconColor"

    const-string/jumbo v12, "chatEditTextIconsColor"

    invoke-interface {v7, v12, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1864
    :cond_4d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4e

    .line 1865
    const-string/jumbo v10, "chatEditTextColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1866
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EditTextColor"

    const v12, 0x7f07024f

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEditTextColor"

    const/high16 v12, -0x1000000

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1867
    :cond_4e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4f

    .line 1868
    const-string/jumbo v10, "chatEditTextBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1869
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EditTextBGColor"

    const v12, 0x7f07024e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEditTextBGColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1870
    :cond_4f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_51

    .line 1871
    const-string/jumbo v10, "chatEditTextBGGradient"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1872
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatEditTextBGGradient"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_50

    const/4 v10, 0x0

    :goto_11
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_50
    const-string/jumbo v10, "chatEditTextBGGradientColor"

    const/4 v12, -0x1

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_11

    .line 1873
    :cond_51
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_52

    .line 1874
    const-string/jumbo v10, "chatAttachBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1875
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AttachBGColor"

    const v12, 0x7f0700a7

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatAttachBGColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1876
    :cond_52
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_54

    .line 1877
    const-string/jumbo v10, "chatAttachBGGradient"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1878
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatAttachBGGradient"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_53

    const/4 v10, 0x0

    :goto_12
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_53
    const-string/jumbo v10, "chatAttachBGGradientColor"

    const/4 v12, -0x1

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_12

    .line 1879
    :cond_54
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_55

    .line 1880
    const-string/jumbo v10, "chatAttachTextColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1881
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AttachTextColor"

    const v12, 0x7f0700b9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatAttachTextColor"

    const v12, -0x8a8a8b

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1882
    :cond_55
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_56

    .line 1883
    const-string/jumbo v10, "chatEditTextIconsColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1884
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EditTextIconsColor"

    const v12, 0x7f070250

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEditTextIconsColor"

    const v12, -0x525253

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1885
    :cond_56
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_57

    .line 1886
    const-string/jumbo v10, "chatEmojiViewBGColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1887
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EmojiViewBGColor"

    const v12, 0x7f07025a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEmojiViewBGColor"

    const v12, -0xa0909

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1888
    :cond_57
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_59

    .line 1889
    const-string/jumbo v10, "chatEmojiViewBGGradient"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1890
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, "chatEmojiViewBGGradient"

    const/4 v12, 0x0

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_58

    const/4 v10, 0x0

    :goto_13
    const/4 v12, 0x1

    invoke-virtual {v6, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_58
    const-string/jumbo v10, "chatEmojiViewBGGradientColor"

    const v12, -0xa0909

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_13

    .line 1891
    :cond_59
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_5a

    .line 1892
    const-string/jumbo v10, "chatEmojiViewTabIconColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1893
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EmojiViewTabIconColor"

    const v12, 0x7f07025c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEmojiViewTabIconColor"

    const v12, -0x575758

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1894
    :cond_5a
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_5b

    .line 1895
    const-string/jumbo v10, "chatEmojiViewTabColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1896
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "EmojiViewTabColor"

    const v12, 0x7f07025b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatEmojiViewTabColor"

    const-string/jumbo v12, "themeColor"

    const/16 v13, -0x15

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1897
    :cond_5b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_5c

    .line 1898
    const-string/jumbo v10, "chatQuickBarColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1899
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "QuickBarColor"

    const v12, 0x7f0705b0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatQuickBarColor"

    const/4 v12, -0x1

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1900
    :cond_5c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1901
    const-string/jumbo v10, "chatQuickBarNamesColor"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1902
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "QuickBarNamesColor"

    const v12, 0x7f0705b1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatQuickBarNamesColor"

    const v12, -0xdededf

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1904
    .end local v1    # "darkColor":I
    .end local v2    # "defColor":I
    .end local v3    # "lightColor":I
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_5d
    const/4 v10, 0x5

    if-ne v8, v10, :cond_1

    .line 1905
    if-nez p2, :cond_5e

    .line 1906
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_5e
    move-object/from16 v6, p2

    .line 1909
    check-cast v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1910
    .local v6, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_63

    .line 1911
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1912
    const-string/jumbo v10, "chatGradientBG"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1913
    .local v9, "value":I
    if-nez v9, :cond_5f

    .line 1914
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1915
    :cond_5f
    const/4 v10, 0x1

    if-ne v9, v10, :cond_60

    .line 1916
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1917
    :cond_60
    const/4 v10, 0x2

    if-ne v9, v10, :cond_61

    .line 1918
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1919
    :cond_61
    const/4 v10, 0x3

    if-ne v9, v10, :cond_62

    .line 1920
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1921
    :cond_62
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1922
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1924
    .end local v9    # "value":I
    :cond_63
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_68

    .line 1925
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1926
    const-string/jumbo v10, "chatHeaderGradient"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1927
    .restart local v9    # "value":I
    if-nez v9, :cond_64

    .line 1928
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1929
    :cond_64
    const/4 v10, 0x1

    if-ne v9, v10, :cond_65

    .line 1930
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1931
    :cond_65
    const/4 v10, 0x2

    if-ne v9, v10, :cond_66

    .line 1932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1933
    :cond_66
    const/4 v10, 0x3

    if-ne v9, v10, :cond_67

    .line 1934
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1935
    :cond_67
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1938
    .end local v9    # "value":I
    :cond_68
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_6d

    .line 1939
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1940
    const-string/jumbo v10, "chatEditTextBGGradient"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1941
    .restart local v9    # "value":I
    if-nez v9, :cond_69

    .line 1942
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1943
    :cond_69
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6a

    .line 1944
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1945
    :cond_6a
    const/4 v10, 0x2

    if-ne v9, v10, :cond_6b

    .line 1946
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1947
    :cond_6b
    const/4 v10, 0x3

    if-ne v9, v10, :cond_6c

    .line 1948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1949
    :cond_6c
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1950
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1952
    .end local v9    # "value":I
    :cond_6d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_72

    .line 1953
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1954
    const-string/jumbo v10, "chatAttachBGGradient"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1955
    .restart local v9    # "value":I
    if-nez v9, :cond_6e

    .line 1956
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1957
    :cond_6e
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6f

    .line 1958
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1959
    :cond_6f
    const/4 v10, 0x2

    if-ne v9, v10, :cond_70

    .line 1960
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1961
    :cond_70
    const/4 v10, 0x3

    if-ne v9, v10, :cond_71

    .line 1962
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1963
    :cond_71
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1964
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1966
    .end local v9    # "value":I
    :cond_72
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1967
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1968
    const-string/jumbo v10, "chatEmojiViewBGGradient"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1969
    .restart local v9    # "value":I
    if-nez v9, :cond_73

    .line 1970
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1971
    :cond_73
    const/4 v10, 0x1

    if-ne v9, v10, :cond_74

    .line 1972
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1973
    :cond_74
    const/4 v10, 0x2

    if-ne v9, v10, :cond_75

    .line 1974
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1975
    :cond_75
    const/4 v10, 0x3

    if-ne v9, v10, :cond_76

    .line 1976
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1977
    :cond_76
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1978
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1983
    .end local v6    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v9    # "value":I
    :cond_77
    const-string/jumbo v10, "windowBackgroundWhite"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2019
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2024
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 1616
    const-string/jumbo v2, "chatGradientBG"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 1617
    .local v0, "g":I
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatHeaderGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1618
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_1
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1619
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatCommandColorCheck"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getBoolPref(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1620
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1621
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatEditTextBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatAttachBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1622
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatEmojiViewBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1623
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-ne p1, v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method
