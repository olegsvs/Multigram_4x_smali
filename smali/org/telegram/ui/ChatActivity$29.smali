.class Lorg/telegram/ui/ChatActivity$29;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2468
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2471
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->checkTextureViewPosition:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$8402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->createUnreadMessageAfterId:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToLoadIndex:I
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZ)V

    .line 2479
    :goto_0
    return-void

    .line 2474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToMessageId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToMessageId:I
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->returnToLoadIndex:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZ)V

    goto :goto_0

    .line 2477
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToLastMessage(Z)V
    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_0
.end method
