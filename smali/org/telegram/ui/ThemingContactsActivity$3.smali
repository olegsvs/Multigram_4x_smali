.class Lorg/telegram/ui/ThemingContactsActivity$3;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 184
    .local v15, "themePrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 449
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 190
    .local v12, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$1;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 198
    .local v1, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_0

    .line 199
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 204
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 205
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$2;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsHeaderGradientColor"

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 211
    invoke-interface {v15, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 212
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 213
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 218
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 219
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$3;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderTitleColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 226
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 227
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 232
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 233
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$4;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsHeaderIconsColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 240
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 241
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 246
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 247
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$5;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsIconsColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 254
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 255
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 260
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 261
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$6;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsRowColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 269
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 270
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 275
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 276
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$7;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    const-string/jumbo v4, "contactsRowGradientColor"

    const/4 v5, -0x1

    .line 281
    invoke-interface {v15, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 282
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 283
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientListCheckRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 284
    const-string/jumbo v2, "contactsRowGradientListCheck"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 285
    .local v9, "b":Z
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 286
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "contactsRowGradientListCheck"

    if-nez v9, :cond_9

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v11, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_0

    .line 289
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v9, :cond_a

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 286
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 289
    .end local p2    # "view":Landroid/view/View;
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 292
    .end local v9    # "b":Z
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 293
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f0705fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v8, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070600

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070604

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070601

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070603

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f0705fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/String;

    .line 302
    .local v14, "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    invoke-interface {v8, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$8;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f070105

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 315
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "simpleArray":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_d

    .line 316
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "RowGradient"

    const v3, 0x7f0705fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .restart local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "RowGradientDisabled"

    const v3, 0x7f070600

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const-string/jumbo v2, "RowGradientTopBottom"

    const v3, 0x7f070604

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    const-string/jumbo v2, "RowGradientLeftRight"

    const v3, 0x7f070601

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string/jumbo v2, "RowGradientTLBR"

    const v3, 0x7f070603

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string/jumbo v2, "RowGradientBLTR"

    const v3, 0x7f0705fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/String;

    .line 325
    .restart local v14    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 326
    invoke-interface {v8, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$9;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f070105

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 338
    .end local v8    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "simpleArray":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 343
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 344
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$10;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsRowColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 352
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 353
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_f

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 358
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 359
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$11;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsStatusColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 367
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 368
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 373
    .restart local v12    # "li":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 374
    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingContactsActivity$3$12;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->contactsOnlineColor:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 381
    .restart local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 382
    .end local v1    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v12    # "li":Landroid/view/LayoutInflater;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "AvatarRadius"

    const v3, 0x7f0700c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    new-instance v13, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 390
    .local v13, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 391
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 392
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->contactsAvatarRadius:I

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 393
    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 394
    const-string/jumbo v2, "Done"

    const v3, 0x7f070234

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lorg/telegram/ui/ThemingContactsActivity$3$13;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 404
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_12

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 408
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "NameSize"

    const v3, 0x7f07044e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 410
    new-instance v13, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 412
    .restart local v13    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0xc

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 413
    const/16 v2, 0x1e

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 414
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->contactsNameSize:I

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 415
    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 416
    const-string/jumbo v2, "Done"

    const v3, 0x7f070234

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lorg/telegram/ui/ThemingContactsActivity$3$14;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 426
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    # getter for: Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    .restart local v10    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "StatusSize"

    const v3, 0x7f0706b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v13, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 434
    .restart local v13    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v2, 0xa

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 435
    const/16 v2, 0x14

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 436
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->contactsStatusSize:I

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 437
    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 438
    const-string/jumbo v2, "Done"

    const v3, 0x7f070234

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$3$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lorg/telegram/ui/ThemingContactsActivity$3$15;-><init>(Lorg/telegram/ui/ThemingContactsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ThemingContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
