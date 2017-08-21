.class Lorg/telegram/ui/Components/PhotoFilterView$2;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;


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
    .line 1681
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Lorg/telegram/ui/Components/Point;FFF)V
    .locals 2
    .param p1, "centerPoint"    # Lorg/telegram/ui/Components/Point;
    .param p2, "falloff"    # F
    .param p3, "size"    # F
    .param p4, "angle"    # F

    .prologue
    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1685
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;)Lorg/telegram/ui/Components/Point;

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0, p4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$2;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 1691
    :cond_0
    return-void
.end method
