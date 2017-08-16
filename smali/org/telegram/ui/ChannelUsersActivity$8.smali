.class Lorg/telegram/ui/ChannelUsersActivity$8;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->didReceivedNotification(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 703
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$8;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$8;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # setter for: Lorg/telegram/ui/ChannelUsersActivity;->firstEndReached:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$1802(Lorg/telegram/ui/ChannelUsersActivity;Z)Z

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$8;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    const/16 v1, 0xc8

    # invokes: Lorg/telegram/ui/ChannelUsersActivity;->getChannelParticipants(II)V
    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$1900(Lorg/telegram/ui/ChannelUsersActivity;II)V

    .line 708
    return-void
.end method
