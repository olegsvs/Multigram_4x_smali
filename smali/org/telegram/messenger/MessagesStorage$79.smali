.class Lorg/telegram/messenger/MessagesStorage$79;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$additionalDialogsToUpdate:Ljava/util/ArrayList;

.field final synthetic val$channelId:I

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 5440
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$79;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$messages:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$additionalDialogsToUpdate:Ljava/util/ArrayList;

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5443
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$79;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$additionalDialogsToUpdate:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$79;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5444
    return-void
.end method
