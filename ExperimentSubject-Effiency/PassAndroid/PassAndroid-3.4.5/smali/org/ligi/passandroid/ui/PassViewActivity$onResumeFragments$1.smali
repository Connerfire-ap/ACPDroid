.class final Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;
.super Ljava/lang/Object;
.source "PassViewActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivity;->onResumeFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->back_fields:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "back_fields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->back_fields:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "back_fields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->moreTextView:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->back_fields:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "back_fields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivity$onResumeFragments$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->moreTextView:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
