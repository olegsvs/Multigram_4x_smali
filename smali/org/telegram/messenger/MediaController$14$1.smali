.class Lorg/telegram/messenger/MediaController$14$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$14;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$14;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$14;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$14;

    .prologue
    .line 2624
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2627
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14$1;->this$1:Lorg/telegram/messenger/MediaController$14;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2628
    return-void
.end method
