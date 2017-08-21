.class Lorg/telegram/ui/ProfileActivity$20$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$20;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$20;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$20;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$20;

    .prologue
    .line 1616
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ProfileActivity;->access$5902(Lorg/telegram/ui/ProfileActivity;I)I

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v1, v0}, Lorg/telegram/ui/ProfileActivity;->access$6002(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$6102(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1625
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget v3, v3, Lorg/telegram/ui/ProfileActivity$20;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/ProfileActivity;->access$6202(Lorg/telegram/ui/ProfileActivity;I)I

    .line 1629
    new-instance v0, Lorg/telegram/ui/ProfileActivity$20$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$20$1$1;-><init>(Lorg/telegram/ui/ProfileActivity$20$1;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
