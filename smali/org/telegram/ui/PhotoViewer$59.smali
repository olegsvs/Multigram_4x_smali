.class Lorg/telegram/ui/PhotoViewer$59;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->redraw(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 5286
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$59;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5289
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$59;->val$count:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$12100(Lorg/telegram/ui/PhotoViewer;I)V

    .line 5290
    return-void
.end method
