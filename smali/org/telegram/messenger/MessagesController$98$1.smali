.class Lorg/telegram/messenger/MessagesController$98$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$98;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$98;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$98;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$98;

    .prologue
    .line 5700
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5703
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 5704
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 5705
    return-void
.end method
