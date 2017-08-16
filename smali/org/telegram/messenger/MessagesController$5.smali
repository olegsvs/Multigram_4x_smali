.class Lorg/telegram/messenger/MessagesController$5;
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
    .line 675
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 678
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 679
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 682
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$702(Lorg/telegram/messenger/MessagesController;J)J

    .line 683
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$802(Lorg/telegram/messenger/MessagesController;J)J

    .line 684
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$902(Lorg/telegram/messenger/MessagesController;J)J

    .line 685
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 686
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$5;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 687
    return-void
.end method
