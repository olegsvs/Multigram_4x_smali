.class Lorg/telegram/messenger/MediaController$23$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$23;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$23;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$23;

    .prologue
    .line 3214
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$23$1;->this$1:Lorg/telegram/messenger/MediaController$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3217
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$23$1;->this$1:Lorg/telegram/messenger/MediaController$23;

    iget v5, v5, Lorg/telegram/messenger/MediaController$23;->val$send:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3218
    return-void

    :cond_0
    move v0, v1

    .line 3217
    goto :goto_0
.end method
