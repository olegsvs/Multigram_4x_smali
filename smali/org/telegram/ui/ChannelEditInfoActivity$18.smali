.class Lorg/telegram/ui/ChannelEditInfoActivity$18;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 1071
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1800(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$500(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$18;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1900(Lorg/telegram/ui/ChannelEditInfoActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    .line 1078
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 1075
    goto :goto_0
.end method
