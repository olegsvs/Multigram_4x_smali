.class Lorg/telegram/ui/ProfileActivity$19;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1555
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$19;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1560
    :try_start_0
    iget v5, p0, Lorg/telegram/ui/ProfileActivity$19;->val$position:I

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1561
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 1566
    .local v0, "about":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 1575
    .end local v0    # "about":Ljava/lang/String;
    :goto_1
    return-void

    .line 1563
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$19;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v4

    .line 1564
    .local v4, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v4, :cond_1

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .restart local v0    # "about":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v0    # "about":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1569
    .end local v4    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .restart local v0    # "about":Ljava/lang/String;
    :cond_2
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1570
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v5, "label"

    invoke-static {v5, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1571
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1572
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    :catch_0
    move-exception v3

    .line 1573
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
