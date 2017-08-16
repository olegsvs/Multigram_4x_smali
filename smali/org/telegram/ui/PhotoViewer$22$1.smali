.class Lorg/telegram/ui/PhotoViewer$22$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$22;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$22;

    .prologue
    .line 2215
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22$1;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2218
    const/4 v0, 0x1

    return v0
.end method
