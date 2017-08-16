.class Lorg/telegram/ui/ChatActivity$54$3;
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
    .line 3484
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$54$3;->this$1:Lorg/telegram/ui/ChatActivity$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3487
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$54$3;->this$1:Lorg/telegram/ui/ChatActivity$54;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 3488
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$54$3;->this$1:Lorg/telegram/ui/ChatActivity$54;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 3489
    return-void
.end method
