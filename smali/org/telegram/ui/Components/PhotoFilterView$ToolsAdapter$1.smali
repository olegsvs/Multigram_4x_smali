.class Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    .prologue
    .line 2186
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "progress"    # I

    .prologue
    .line 2189
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 2190
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 2212
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2215
    :cond_1
    return-void

    .line 2191
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2193
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 2194
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2195
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2197
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 2198
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2199
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2200
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 2201
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 2202
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2203
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 2204
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2205
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 2206
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2207
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 2209
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2210
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v1, p2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0
.end method
