.class Lorg/telegram/ui/ChatActivity$54$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$54;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$54;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$54;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$54;

    .prologue
    .line 3473
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$54$2;->this$1:Lorg/telegram/ui/ChatActivity$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 3476
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54$2;->this$1:Lorg/telegram/ui/ChatActivity$54;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 3477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$54$2;->this$1:Lorg/telegram/ui/ChatActivity$54;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3478
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54$2;->this$1:Lorg/telegram/ui/ChatActivity$54;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)V

    .line 3480
    :cond_0
    return-void
.end method
