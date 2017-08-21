.class Lorg/telegram/ui/ChannelEditInfoActivity$4$1;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditInfoActivity$4;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 352
    if-nez p2, :cond_1

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openCamera()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1000(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->openGallery()V

    goto :goto_0

    .line 356
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1702(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1602(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1700(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$4$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$4;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1800(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
