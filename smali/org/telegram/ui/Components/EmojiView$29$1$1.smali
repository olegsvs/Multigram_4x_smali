.class Lorg/telegram/ui/Components/EmojiView$29$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$29$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/EmojiView$29$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$29$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/Components/EmojiView$29$1;

    .prologue
    .line 1952
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$29$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$29$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1955
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$29$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$29$1$1;->this$2:Lorg/telegram/ui/Components/EmojiView$29$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$29$1;->this$1:Lorg/telegram/ui/Components/EmojiView$29;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$29;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1958
    :cond_0
    return-void
.end method
