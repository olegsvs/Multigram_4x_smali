.class Lorg/telegram/ui/ChannelEditInfoActivity$13$1;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditInfoActivity$13;

    .prologue
    .line 681
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$13$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v6, 0x0

    .line 684
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 685
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$13$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$13;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v3

    int-to-long v4, v3

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 690
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$13$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$13;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$13$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$13;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1300(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$13$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$13;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->finishFragment()V

    .line 692
    return-void

    .line 688
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
