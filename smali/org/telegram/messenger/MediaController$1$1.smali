.class Lorg/telegram/messenger/MediaController$1$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$1;

.field final synthetic val$finalBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$flush:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$1;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$1;

    .prologue
    .line 454
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$1$1;->val$flush:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 457
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 458
    const/4 v0, -0x1

    .line 459
    .local v0, "oldLimit":I
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 460
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 461
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 463
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 464
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$flush:Z

    if-eqz v1, :cond_3

    .line 465
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$flush:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    :goto_1
    # invokes: Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/MediaController;->access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 467
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordTimeCount:J
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    add-long/2addr v2, v4

    # setter for: Lorg/telegram/messenger/MediaController;->recordTimeCount:J
    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MediaController;->access$702(Lorg/telegram/messenger/MediaController;J)J

    .line 470
    :cond_3
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 471
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 465
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->val$finalBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    goto :goto_1

    .line 474
    .end local v0    # "oldLimit":I
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1$1;->this$1:Lorg/telegram/messenger/MediaController$1;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MediaController$1$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$1$1$1;-><init>(Lorg/telegram/messenger/MediaController$1$1;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method