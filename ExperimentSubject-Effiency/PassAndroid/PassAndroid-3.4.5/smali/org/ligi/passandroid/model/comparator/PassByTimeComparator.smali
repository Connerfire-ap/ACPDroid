.class public Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;
.super Ljava/lang/Object;
.source "PassByTimeComparator.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/ligi/passandroid/model/pass/Pass;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003JP\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000226\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00050\tH\u0004J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;",
        "Ljava/util/Comparator;",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "()V",
        "calculateCompareForNullValues",
        "",
        "lhs",
        "rhs",
        "foo",
        "Lkotlin/Function2;",
        "Lorg/threeten/bp/ZonedDateTime;",
        "Lkotlin/ParameterName;",
        "name",
        "leftDate",
        "rightDate",
        "compare",
        "extractPassDate",
        "pass",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final extractPassDate(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    .line 33
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_2
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 38
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final calculateCompareForNullValues(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;Lkotlin/jvm/functions/Function2;)I
    .locals 3
    .param p1, "lhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "foo"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lorg/threeten/bp/ZonedDateTime;",
            "-",
            "Lorg/threeten/bp/ZonedDateTime;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    const-string v2, "lhs"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rhs"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "foo"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->extractPassDate(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 17
    .local v0, "leftDate":Lorg/threeten/bp/ZonedDateTime;
    invoke-direct {p0, p2}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->extractPassDate(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    .line 19
    .local v1, "rightDate":Lorg/threeten/bp/ZonedDateTime;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v2, 0x0

    .line 29
    :goto_0
    return v2

    .line 23
    :cond_0
    if-nez v0, :cond_1

    .line 24
    const/4 v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    if-nez v1, :cond_2

    .line 27
    const/4 v2, -0x1

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p3, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lorg/ligi/passandroid/model/pass/Pass;

    check-cast p2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
    .locals 1
    .param p1, "lhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rhs"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;->INSTANCE:Lorg/ligi/passandroid/model/comparator/PassByTimeComparator$compare$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, p2, v0}, Lorg/ligi/passandroid/model/comparator/PassByTimeComparator;->calculateCompareForNullValues(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;Lkotlin/jvm/functions/Function2;)I

    move-result v0

    return v0
.end method
