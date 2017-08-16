.class Lorg/telegram/ui/Components/EmojiView$28;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 1827
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4200(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$28;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1832
    return-void
.end method
