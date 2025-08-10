.class final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FieldsEditFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView;->apply(Lorg/ligi/passandroid/model/pass/PassField;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Landroid/text/Editable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/text/Editable;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $passField:Lorg/ligi/passandroid/model/pass/PassField;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/PassField;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;->$passField:Lorg/ligi/passandroid/model/pass/PassField;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;->invoke(Landroid/text/Editable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 2
    .param p1, "it"    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$FieldView$apply$2;->$passField:Lorg/ligi/passandroid/model/pass/PassField;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassField;->setValue(Ljava/lang/String;)V

    .line 67
    return-void
.end method
