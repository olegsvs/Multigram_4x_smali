.class Lorg/telegram/ui/ChangeBioActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeBioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeBioActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeBioActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeBioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeBioActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ChangeBioActivity$1;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 73
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ChangeBioActivity$1;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeBioActivity;->finishFragment()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/ChangeBioActivity$1;->this$0:Lorg/telegram/ui/ChangeBioActivity;

    # invokes: Lorg/telegram/ui/ChangeBioActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeBioActivity;->access$000(Lorg/telegram/ui/ChangeBioActivity;)V

    goto :goto_0
.end method
