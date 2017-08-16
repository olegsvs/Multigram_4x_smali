.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;[Lorg/telegram/ui/ActionBar/ThemeDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .prologue
    .line 737
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 742
    .local v0, "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->history:Lorg/telegram/ui/Components/HistorySelectorView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HistorySelectorView;->selectColor(I)V

    .line 744
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # invokes: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1800(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)V

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->history:Lorg/telegram/ui/Components/HistorySelectorView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/HistorySelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HistorySelectorView;->makeColorList()V

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$8;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->invalidate()V

    .line 748
    return-void
.end method
