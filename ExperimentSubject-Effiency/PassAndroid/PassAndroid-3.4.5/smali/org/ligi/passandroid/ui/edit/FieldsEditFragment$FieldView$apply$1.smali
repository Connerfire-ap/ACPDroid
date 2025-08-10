.class final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;
.super Ljava/lang/Object;
.source "FieldsEditFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->apply(Lorg/ligi/passandroid/model/pass/PassField;Ljava/util/List;)V
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
        "v",
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
.field final synthetic $fields:Ljava/util/List;

.field final synthetic $passField:Lorg/ligi/passandroid/model/pass/PassField;


# direct methods
.method constructor <init>(Ljava/util/List;Lorg/ligi/passandroid/model/pass/PassField;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;->$fields:Ljava/util/List;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;->$passField:Lorg/ligi/passandroid/model/pass/PassField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;->$fields:Ljava/util/List;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$1;->$passField:Lorg/ligi/passandroid/model/pass/PassField;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
