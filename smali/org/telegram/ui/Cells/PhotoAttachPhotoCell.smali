.class public Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
.super Landroid/widget/FrameLayout;
.source "PhotoAttachPhotoCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;
    }
.end annotation


# static fields
.field private static rect:Landroid/graphics/Rect;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkFrame:Landroid/widget/FrameLayout;

.field private delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isLast:Z

.field private photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private pressed:Z

.field private videoInfoContainer:Landroid/widget/FrameLayout;

.field private videoTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x50

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    .line 63
    iget-object v9, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    const/16 v0, 0x2a

    const/high16 v1, 0x42280000    # 42.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42180000    # 38.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 65
    .local v8, "themePrefs":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x50

    const/16 v2, 0x10

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v7, "imageView1":Landroid/widget/ImageView;
    const v0, 0x7f020116

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x13

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    iget-object v9, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x41900000    # 18.0f

    const v4, -0x40cccccd    # -0.7f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020055

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    :goto_0
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_1
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 85
    iget-object v9, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x1e

    const/high16 v1, 0x41f00000    # 30.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 87
    return-void

    .line 83
    :cond_0
    const v0, -0xc33511

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method public getVideoInfoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    sget-object v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 178
    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    .line 181
    const/4 v0, 0x1

    .line 200
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 204
    :cond_1
    return v0

    .line 183
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 186
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 187
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->playSoundEffect(I)V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    invoke-interface {v1, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;->onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 191
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 194
    sget-object v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->invalidate()V

    goto :goto_0
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 140
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->delegate:Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;

    .line 148
    return-void
.end method

.method public setOnCheckClickLisnener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onCheckClickLisnener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .locals 12
    .param p1, "entry"    # Lorg/telegram/messenger/MediaController$PhotoEntry;
    .param p2, "last"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x0

    const v10, 0x7f0201e4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 111
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->pressed:Z

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 113
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isLast:Z

    .line 114
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v7, v11, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Ljava/lang/String;)Z

    move-result v2

    .line 133
    .local v2, "showing":Z
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    if-nez v2, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v2, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->requestLayout()V

    .line 136
    return-void

    .line 116
    .end local v2    # "showing":Z
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 119
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    div-int/lit8 v0, v3, 0x3c

    .line 121
    .local v0, "minutes":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    mul-int/lit8 v7, v0, 0x3c

    sub-int v1, v3, v7

    .line 122
    .local v1, "seconds":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vthumb://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v8, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v7, v11, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "minutes":I
    .end local v1    # "seconds":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v7, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v3, v7, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "thumb://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v8, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v7, v11, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 130
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_0

    .restart local v2    # "showing":Z
    :cond_4
    move v3, v5

    .line 133
    goto/16 :goto_1
.end method

.method public showCheck(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 155
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 158
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v4, v0, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->videoInfoContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    aput v0, v7, v8

    .line 159
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_2

    :goto_1
    aput v1, v6, v8

    .line 160
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v9

    .line 158
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    return-void

    :cond_1
    move v0, v2

    .line 158
    goto :goto_0

    :cond_2
    move v1, v2

    .line 159
    goto :goto_1
.end method
