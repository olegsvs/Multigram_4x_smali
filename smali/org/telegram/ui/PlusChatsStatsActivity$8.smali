.class Lorg/telegram/ui/PlusChatsStatsActivity$8;
.super Ljava/lang/Object;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->showOther(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 734
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$8;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 737
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$8;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2900(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 738
    .local v1, "id":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$8;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3000(Lorg/telegram/ui/PlusChatsStatsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$8;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PlusChatsStatsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 741
    return-void
.end method
