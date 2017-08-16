.class Lorg/telegram/ui/PhotoViewer$15;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2058
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2061
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2062
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getCurrentVideoEditedInfo()Lorg/telegram/messenger/VideoEditedInfo;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    .line 2063
    .local v0, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V

    .line 2064
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2065
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$15;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 2067
    .end local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_0
    return-void
.end method
