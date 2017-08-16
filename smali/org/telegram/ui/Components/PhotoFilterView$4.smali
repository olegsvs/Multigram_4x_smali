.class Lorg/telegram/ui/Components/PhotoFilterView$4;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1742
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, -0x933c01

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$4;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    .line 1750
    return-void
.end method
