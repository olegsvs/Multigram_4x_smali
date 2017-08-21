.class Lorg/telegram/ui/PhotoViewer$22;
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
    .line 2193
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2196
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2199
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 2200
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setUseHardwareLayer(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2201
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2202
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2203
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2205
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2206
    .local v9, "titleView":Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 2207
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2208
    const-string/jumbo v10, "MessageLifetime"

    const v11, 0x7f07041f

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2210
    const/4 v10, 0x1

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2211
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2212
    const/high16 v10, 0x41a80000    # 21.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2213
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2214
    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2215
    new-instance v10, Lorg/telegram/ui/PhotoViewer$22$1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/PhotoViewer$22$1;-><init>(Lorg/telegram/ui/PhotoViewer$22;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2222
    new-instance v9, Landroid/widget/TextView;

    .end local v9    # "titleView":Landroid/widget/TextView;
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2223
    .restart local v9    # "titleView":Landroid/widget/TextView;
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "MessageLifetimeVideo"

    const v11, 0x7f070424

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2224
    const v10, -0x7f7f80

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2225
    const/4 v10, 0x1

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2226
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2227
    const/high16 v10, 0x41a80000    # 21.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2228
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2229
    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2230
    new-instance v10, Lorg/telegram/ui/PhotoViewer$22$2;

    invoke-direct {v10, p0}, Lorg/telegram/ui/PhotoViewer$22$2;-><init>(Lorg/telegram/ui/PhotoViewer$22;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2238
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 2239
    .local v0, "bottomSheet":Lorg/telegram/ui/ActionBar/BottomSheet;
    new-instance v5, Lorg/telegram/ui/Components/NumberPicker;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 2240
    .local v5, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 2241
    const/16 v10, 0x1c

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 2242
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$5400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 2244
    .local v6, "object":Ljava/lang/Object;
    instance-of v10, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v10, :cond_2

    .line 2245
    check-cast v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local v6    # "object":Ljava/lang/Object;
    iget v3, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->ttl:I

    .line 2251
    .local v3, "currentTTL":I
    :goto_2
    if-nez v3, :cond_4

    .line 2252
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2253
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "self_destruct"

    const/4 v11, 0x7

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 2261
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :goto_3
    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setTextColor(I)V

    .line 2262
    const v10, -0xb2b2b3

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setSelectorColor(I)V

    .line 2263
    new-instance v10, Lorg/telegram/ui/PhotoViewer$22$3;

    invoke-direct {v10, p0}, Lorg/telegram/ui/PhotoViewer$22$3;-><init>(Lorg/telegram/ui/PhotoViewer$22;)V

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 2275
    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2277
    new-instance v2, Lorg/telegram/ui/PhotoViewer$22$4;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, p0, v10}, Lorg/telegram/ui/PhotoViewer$22$4;-><init>(Lorg/telegram/ui/PhotoViewer$22;Landroid/content/Context;)V

    .line 2300
    .local v2, "buttonsLayout":Landroid/widget/FrameLayout;
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2301
    const/4 v10, -0x1

    const/16 v11, 0x34

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2303
    new-instance v8, Landroid/widget/TextView;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2304
    .local v8, "textView":Landroid/widget/TextView;
    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2305
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2306
    const/4 v10, 0x1

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2307
    const v10, -0xb6430e

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2308
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2309
    const-string/jumbo v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2310
    const-string/jumbo v10, "Done"

    const v11, 0x7f070234

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2311
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2312
    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2313
    const/4 v10, -0x2

    const/16 v11, 0x24

    const/16 v12, 0x35

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2314
    new-instance v10, Lorg/telegram/ui/PhotoViewer$22$5;

    invoke-direct {v10, p0, v5, v0}, Lorg/telegram/ui/PhotoViewer$22$5;-><init>(Lorg/telegram/ui/PhotoViewer$22;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2342
    new-instance v8, Landroid/widget/TextView;

    .end local v8    # "textView":Landroid/widget/TextView;
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$22;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2343
    .restart local v8    # "textView":Landroid/widget/TextView;
    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2344
    const/4 v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2345
    const/4 v10, 0x1

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2346
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v10, :cond_6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    :goto_4
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2347
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 2348
    const-string/jumbo v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2349
    const-string/jumbo v10, "Cancel"

    const v11, 0x7f070105

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2350
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2351
    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2352
    const/4 v10, -0x2

    const/16 v11, 0x24

    const/16 v12, 0x35

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2353
    new-instance v10, Lorg/telegram/ui/PhotoViewer$22$6;

    invoke-direct {v10, p0, v0}, Lorg/telegram/ui/PhotoViewer$22$6;-><init>(Lorg/telegram/ui/PhotoViewer$22;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2359
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 2360
    const/high16 v10, -0x1000000

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 2223
    .end local v0    # "bottomSheet":Lorg/telegram/ui/ActionBar/BottomSheet;
    .end local v2    # "buttonsLayout":Landroid/widget/FrameLayout;
    .end local v3    # "currentTTL":I
    .end local v5    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_1
    const-string/jumbo v10, "MessageLifetimePhoto"

    const v11, 0x7f070422

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 2246
    .restart local v0    # "bottomSheet":Lorg/telegram/ui/ActionBar/BottomSheet;
    .restart local v5    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v10, v6, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v10, :cond_3

    .line 2247
    check-cast v6, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v6    # "object":Ljava/lang/Object;
    iget v3, v6, Lorg/telegram/messenger/MediaController$SearchImage;->ttl:I

    .restart local v3    # "currentTTL":I
    goto/16 :goto_2

    .line 2249
    .end local v3    # "currentTTL":I
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "currentTTL":I
    goto/16 :goto_2

    .line 2255
    .end local v6    # "object":Ljava/lang/Object;
    :cond_4
    if-ltz v3, :cond_5

    const/16 v10, 0x15

    if-ge v3, v10, :cond_5

    .line 2256
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto/16 :goto_3

    .line 2258
    :cond_5
    div-int/lit8 v10, v3, 0x5

    add-int/lit8 v10, v10, 0x15

    add-int/lit8 v10, v10, -0x5

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto/16 :goto_3

    .line 2346
    .restart local v2    # "buttonsLayout":Landroid/widget/FrameLayout;
    .restart local v8    # "textView":Landroid/widget/TextView;
    :cond_6
    const v10, -0xb6430e

    goto/16 :goto_4
.end method
