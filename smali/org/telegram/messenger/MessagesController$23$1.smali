.class Lorg/telegram/messenger/MessagesController$23$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$23;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$23;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$23;

    .prologue
    .line 1684
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$23$1;->this$1:Lorg/telegram/messenger/MessagesController$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$23$1;->this$1:Lorg/telegram/messenger/MessagesController$23;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$23;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$3400(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 1688
    return-void
.end method
