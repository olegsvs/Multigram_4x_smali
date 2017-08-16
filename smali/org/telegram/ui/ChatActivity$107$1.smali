.class Lorg/telegram/ui/ChatActivity$107$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$107;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$107;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$107;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$107;

    .prologue
    .line 10175
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$107$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 10178
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$12602(Lorg/telegram/ui/ChatActivity;I)I

    .line 10179
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v1, :cond_1

    .line 10180
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10181
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f07007d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10182
    const-string/jumbo v1, "EditMessageError"

    const v2, 0x7f07024c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10183
    const-string/jumbo v1, "OK"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10184
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 10186
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 10187
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 10194
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 10190
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 10191
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$107$1;->this$1:Lorg/telegram/ui/ChatActivity$107;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$107;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    goto :goto_0
.end method
