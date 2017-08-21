.class Lorg/telegram/messenger/MediaController$28;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$error:Z

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$firstWrite:Z

.field final synthetic val$last:Z

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MessageObject;Ljava/io/File;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 3926
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$28;->this$0:Lorg/telegram/messenger/MediaController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController$28;->val$error:Z

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController$28;->val$last:Z

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$28;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$28;->val$file:Ljava/io/File;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaController$28;->val$firstWrite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3929
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$28;->val$error:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$28;->val$last:Z

    if-eqz v0, :cond_1

    .line 3930
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$7400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3931
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/MediaController;->access$7502(Lorg/telegram/messenger/MediaController;Z)Z

    .line 3932
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3933
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$7600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$28;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3934
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$7700(Lorg/telegram/messenger/MediaController;)Z

    .line 3936
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$28;->val$error:Z

    if-eqz v0, :cond_2

    .line 3937
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$28;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$28;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3944
    :goto_0
    return-void

    .line 3932
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3939
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$28;->val$firstWrite:Z

    if-eqz v0, :cond_3

    .line 3940
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$28;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$28;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3942
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v0, v4, v5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$28;->val$last:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$28;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
