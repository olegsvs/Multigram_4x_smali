.class public Lorg/telegram/ui/IntroActivity$EGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLThread"
.end annotation


# instance fields
.field private final EGL_CONTEXT_CLIENT_VERSION:I

.field private final EGL_OPENGL_ES2_BIT:I

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gl:Ljavax/microedition/khronos/opengles/GL;

.field private initied:Z

.field private lastRenderCallTime:J

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private textures:[I

.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/IntroActivity;Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/IntroActivity;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    .line 560
    const-string/jumbo v0, "EGLThread"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 542
    const/16 v0, 0x3098

    iput v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 543
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->EGL_OPENGL_ES2_BIT:I

    .line 552
    const/16 v0, 0x17

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    .line 687
    new-instance v0, Lorg/telegram/ui/IntroActivity$EGLThread$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$1;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    iput-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 561
    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 562
    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/IntroActivity$EGLThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method private initGL()Z
    .locals 19

    .prologue
    .line 565
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglGetDisplay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 571
    const/4 v2, 0x0

    .line 668
    :goto_0
    return v2

    .line 574
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 575
    .local v18, "version":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglInitialize failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 578
    const/4 v2, 0x0

    goto :goto_0

    .line 581
    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 582
    .local v7, "configsCount":[I
    const/4 v2, 0x1

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 583
    .local v5, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v2, 0x13

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    .line 595
    .local v4, "configSpec":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglChooseConfig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 598
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 599
    :cond_2
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_3

    .line 600
    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 607
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 608
    .local v17, "attrib_list":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v6, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_4

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglCreateContext failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 612
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 602
    .end local v17    # "attrib_list":[I
    :cond_3
    const-string/jumbo v2, "eglConfig not initialized"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 604
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 615
    .restart local v17    # "attrib_list":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v2, v2, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-interface {v2, v3, v6, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_7

    .line 623
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 625
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 618
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 619
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 627
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v6, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 630
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 632
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->gl:Ljavax/microedition/khronos/opengles/GL;

    .line 634
    const/16 v2, 0x17

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 635
    const v2, 0x7f0200ea

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 636
    const v2, 0x7f0200e9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 637
    const v2, 0x7f0200eb

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 638
    const v2, 0x7f0200ec

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 639
    const v2, 0x7f0200ee

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 640
    const v2, 0x7f0200ed

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 641
    const v2, 0x7f0200f0

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 642
    const v2, 0x7f0200ef

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 643
    const v2, 0x7f0200f1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 644
    const v2, 0x7f0200f2

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 645
    const v2, 0x7f0200f4

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 646
    const v2, 0x7f0200f3

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 647
    const v2, 0x7f0200f5

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 648
    const v2, 0x7f0200f6

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 649
    const v2, 0x7f0200f7

    const/16 v3, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 650
    const v2, 0x7f0200f9

    const/16 v3, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 651
    const v2, 0x7f0200f8

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 652
    const v2, 0x7f0200fa

    const/16 v3, 0x11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 653
    const v2, 0x7f0200fb

    const/16 v3, 0x12

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 654
    const v2, 0x7f0200fc

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 655
    const v2, 0x7f0200fd

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 656
    const v2, 0x7f0200fe

    const/16 v3, 0x15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 657
    const v2, 0x7f0200ff

    const/16 v3, 0x16

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v6, 0x15

    aget v3, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/Intro;->setTelegramTextures(II)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v6, 0x12

    aget v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v8, 0x10

    aget v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v9, 0xf

    aget v8, v8, v9

    invoke-static {v2, v3, v6, v8}, Lorg/telegram/messenger/Intro;->setPowerfulTextures(IIII)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v6, 0x14

    aget v3, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/Intro;->setPrivateTextures(II)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v6, 0xd

    aget v3, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/Intro;->setFreeTextures(II)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v6, 0x3

    aget v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v2, v3, v6, v8}, Lorg/telegram/messenger/Intro;->setFastTextures(IIII)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v3, 0x5

    aget v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v3, 0x6

    aget v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v3, 0x7

    aget v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0x8

    aget v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0x9

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0xa

    aget v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0xb

    aget v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v3, 0xc

    aget v16, v2, v3

    invoke-static/range {v8 .. v16}, Lorg/telegram/messenger/Intro;->setIcTextures(IIIIIIIII)V

    .line 665
    invoke-static {}, Lorg/telegram/messenger/Intro;->onSurfaceCreated()V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    invoke-static {v2, v8, v9}, Lorg/telegram/ui/IntroActivity;->access$1502(Lorg/telegram/ui/IntroActivity;J)J

    .line 668
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 583
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x18
        0x3026
        0x0
        0x3032
        0x1
        0x3031
        0x2
        0x3038
    .end array-data

    .line 607
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private loadTexture(II)V
    .locals 7
    .param p1, "resId"    # I
    .param p2, "index"    # I

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2601

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 716
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 717
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 718
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 719
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v2, v2, p2

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 720
    const/16 v2, 0x2801

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 721
    const/16 v2, 0x2800

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 722
    const/16 v2, 0x2802

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 723
    const/16 v2, 0x2803

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 724
    invoke-static {v3, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 726
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 675
    iput-object v5, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 677
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 679
    iput-object v5, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 681
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 683
    iput-object v5, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 685
    :cond_2
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    .line 750
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    .line 751
    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x43140000    # 148.0f

    .line 742
    iput p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceWidth:I

    .line 743
    iput p2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceHeight:I

    .line 744
    iget v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/Intro;->onSurfaceChanged(IIFI)V

    .line 745
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 729
    new-instance v0, Lorg/telegram/ui/IntroActivity$EGLThread$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$2;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method
