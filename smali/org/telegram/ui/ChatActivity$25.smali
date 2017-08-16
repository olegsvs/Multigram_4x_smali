.class Lorg/telegram/ui/ChatActivity$25;
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
    .line 2308
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$25;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2313
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$25;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v4

    .line 2314
    .local v4, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v4, :cond_0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 2315
    .local v0, "about":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 2324
    .end local v0    # "about":Ljava/lang/String;
    .end local v4    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :goto_1
    return-void

    .line 2314
    .restart local v4    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2318
    .restart local v0    # "about":Ljava/lang/String;
    :cond_1
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 2319
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v5, "label"

    invoke-static {v5, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 2320
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2321
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    .end local v4    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :catch_0
    move-exception v3

    .line 2322
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
