.class Lorg/telegram/ui/PhotoViewer$22$5;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$22;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$22;

    .prologue
    .line 2314
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$22$5;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$22$5;->val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2317
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v4

    .line 2318
    .local v4, "value":I
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2319
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2320
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "self_destruct"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2322
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->val$bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 2324
    if-ltz v4, :cond_2

    const/16 v5, 0x15

    if-ge v4, v5, :cond_2

    .line 2325
    move v3, v4

    .line 2329
    .local v3, "seconds":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v6, v6, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2330
    .local v1, "object":Ljava/lang/Object;
    instance-of v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v5, :cond_3

    .line 2331
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local v1    # "object":Ljava/lang/Object;
    iput v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    .line 2335
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v3, :cond_5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_2
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2336
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2337
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$22$5;->this$1:Lorg/telegram/ui/PhotoViewer$22;

    iget-object v5, v5, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->callOnClick()Z

    .line 2339
    :cond_1
    return-void

    .line 2327
    .end local v3    # "seconds":I
    :cond_2
    add-int/lit8 v5, v4, -0x10

    mul-int/lit8 v3, v5, 0x5

    .restart local v3    # "seconds":I
    goto :goto_0

    .line 2332
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_0

    .line 2333
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v1    # "object":Ljava/lang/Object;
    iput v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->ttl:I

    goto :goto_1

    .line 2335
    :cond_4
    const v5, -0xc25212

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method
