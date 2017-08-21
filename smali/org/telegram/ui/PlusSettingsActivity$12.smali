.class Lorg/telegram/ui/PlusSettingsActivity$12;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 1900
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$12;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$12;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$9000(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$12;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1906
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
