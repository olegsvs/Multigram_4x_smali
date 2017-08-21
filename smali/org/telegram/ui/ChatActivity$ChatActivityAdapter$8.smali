.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$fromId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 11839
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->val$fromId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 11842
    if-nez p2, :cond_1

    .line 11843
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->val$fromId:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    .line 11847
    :cond_0
    :goto_0
    return-void

    .line 11844
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 11845
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;->val$fromId:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    goto :goto_0
.end method
