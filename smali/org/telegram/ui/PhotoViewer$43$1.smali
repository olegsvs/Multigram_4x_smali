.class Lorg/telegram/ui/PhotoViewer$43$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$43;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$43;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$43;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$43;

    .prologue
    .line 3384
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 3387
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$7400(Lorg/telegram/ui/PhotoViewer;I)V

    .line 3388
    return-void
.end method
