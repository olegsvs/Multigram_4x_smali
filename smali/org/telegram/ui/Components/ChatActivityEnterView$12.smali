.class Lorg/telegram/ui/Components/ChatActivityEnterView$12;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 963
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 966
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 967
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 968
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V
    invoke-static {v1, v2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    .line 969
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 970
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 983
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 973
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 974
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 976
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_0

    .line 978
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z

    .line 981
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$12;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_0
.end method
