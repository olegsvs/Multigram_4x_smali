.class Lorg/telegram/ui/ChangeChatNameActivity$4;
.super Ljava/lang/Object;
.source "ChangeChatNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeChatNameActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1000(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$4;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$1100(Lorg/telegram/ui/ChangeChatNameActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 259
    return-void

    :cond_0
    move-object v0, v1

    .line 257
    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 253
    return-void
.end method
