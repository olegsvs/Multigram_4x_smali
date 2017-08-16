.class Lorg/telegram/messenger/MessagesController$6;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 717
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    .line 721
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 722
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 723
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 724
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 725
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 726
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$6;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 727
    return-void
.end method
