.class public final Lcom/squareup/haha/guava/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field private static EMPTY_LIST_ITERATOR:Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/squareup/haha/guava/collect/Iterators$1;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/Iterators$1;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/Iterators;->EMPTY_LIST_ITERATOR:Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    .line 122
    new-instance v0, Lcom/squareup/haha/guava/collect/Iterators$2;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/Iterators$2;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method static clear(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Joiner;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1008
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1010
    :cond_0
    return-void
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "inputs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Joiner;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v0, Lcom/squareup/haha/guava/collect/Iterators$5;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Iterators$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    :cond_1
    :goto_0
    return v2

    .line 268
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "o1":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "o2":Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Joiner;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 274
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v0, Lcom/squareup/haha/guava/collect/Iterators;->EMPTY_LIST_ITERATOR:Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    .line 107
    return-object v0
.end method

.method static emptyModifiableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/squareup/haha/guava/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method static forArray([Ljava/lang/Object;III)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/squareup/haha/guava/collect/UnmodifiableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-ltz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/squareup/haha/guava/base/Joiner;->checkArgument(Z)V

    .line 1039
    add-int v0, p1, p2

    .line 1042
    .local v0, "end":I
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/squareup/haha/guava/base/Joiner;->checkPositionIndexes(III)V

    .line 1043
    invoke-static {p3, p2}, Lcom/squareup/haha/guava/base/Joiner;->checkPositionIndex(II)I

    .line 1044
    if-nez p2, :cond_1

    .line 2119
    sget-object v1, Lcom/squareup/haha/guava/collect/Iterators;->EMPTY_LIST_ITERATOR:Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    .line 1053
    :goto_1
    return-object v1

    .line 1038
    .end local v0    # "end":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1053
    .restart local v0    # "end":I
    :cond_1
    new-instance v1, Lcom/squareup/haha/guava/collect/Iterators$11;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/squareup/haha/guava/collect/Iterators$11;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Predicates;->in(Ljava/util/Collection;)Lcom/squareup/haha/guava/base/Predicate;

    move-result-object v1

    .line 1227
    invoke-static {v1}, Lcom/squareup/haha/guava/base/Joiner;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const/4 v0, 0x0

    .line 1229
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 1232
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Iterators$12;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Iterators$12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/Collections2;->STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/squareup/haha/guava/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Iterator;Lcom/squareup/haha/guava/base/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lcom/squareup/haha/guava/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    .local p1, "function":Lcom/squareup/haha/guava/base/Function;, "Lcom/squareup/haha/guava/base/Function<-TF;+TT;>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Joiner;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v0, Lcom/squareup/haha/guava/collect/Iterators$8;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/guava/collect/Iterators$8;-><init>(Ljava/util/Iterator;Lcom/squareup/haha/guava/base/Function;)V

    return-object v0
.end method
