.class Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final formatter:Lorg/threeten/bp/format/DateTimeFormatter;

.field private final query:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/threeten/bp/format/DateTimeFormatter;Lorg/threeten/bp/temporal/TemporalQuery;)V
    .locals 0
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/DateTimeFormatter;",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1727
    .local p2, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<*>;"
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1728
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    .line 1729
    iput-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 1730
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v2, 0x0

    .line 1734
    const-string v1, "obj"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1735
    const-string v1, "toAppendTo"

    invoke-static {p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1736
    const-string v1, "pos"

    invoke-static {p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1737
    instance-of v1, p1, Lorg/threeten/bp/temporal/TemporalAccessor;

    if-nez v1, :cond_0

    .line 1738
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Format target must implement TemporalAccessor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1740
    :cond_0
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1741
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1743
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    check-cast p1, Lorg/threeten/bp/temporal/TemporalAccessor;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->formatTo(Lorg/threeten/bp/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    return-object p2

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1751
    const-string v1, "text"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1753
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    if-nez v1, :cond_0

    .line 1754
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    const/4 v2, 0x0

    # invokes: Lorg/threeten/bp/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;
    invoke-static {v1, p1, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->access$000(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeFormatter;->getResolverStyle()Lorg/threeten/bp/format/ResolverStyle;

    move-result-object v2

    iget-object v3, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v3}, Lorg/threeten/bp/format/DateTimeFormatter;->getResolverFields()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v1

    .line 1757
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {v1, p1, v2}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "ex":Lorg/threeten/bp/format/DateTimeParseException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeParseException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1760
    .end local v0    # "ex":Lorg/threeten/bp/format/DateTimeParseException;
    :catch_1
    move-exception v0

    .line 1761
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/text/ParseException;

    throw v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1766
    const-string v4, "text"

    invoke-static {p1, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1769
    :try_start_0
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    # invokes: Lorg/threeten/bp/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    invoke-static {v4, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatter;->access$100(Lorg/threeten/bp/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1776
    .local v2, "unresolved":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    if-nez v2, :cond_3

    .line 1777
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_0

    .line 1778
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    move-object v0, v3

    .line 1791
    .end local v2    # "unresolved":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    :cond_1
    :goto_0
    return-object v0

    .line 1770
    :catch_0
    move-exception v1

    .line 1771
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_2

    .line 1772
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_2
    move-object v0, v3

    .line 1774
    goto :goto_0

    .line 1783
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "unresolved":Lorg/threeten/bp/format/DateTimeParseContext$Parsed;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lorg/threeten/bp/format/DateTimeParseContext$Parsed;->toBuilder()Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v5}, Lorg/threeten/bp/format/DateTimeFormatter;->getResolverStyle()Lorg/threeten/bp/format/ResolverStyle;

    move-result-object v5

    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->formatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v6}, Lorg/threeten/bp/format/DateTimeFormatter;->getResolverFields()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/threeten/bp/format/DateTimeBuilder;->resolve(Lorg/threeten/bp/format/ResolverStyle;Ljava/util/Set;)Lorg/threeten/bp/format/DateTimeBuilder;

    move-result-object v0

    .line 1785
    .local v0, "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    if-eqz v4, :cond_1

    .line 1788
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatter$ClassicFormat;->query:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {v0, v4}, Lorg/threeten/bp/format/DateTimeBuilder;->build(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1789
    .end local v0    # "builder":Lorg/threeten/bp/format/DateTimeBuilder;
    :catch_1
    move-exception v1

    .line 1790
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object v0, v3

    .line 1791
    goto :goto_0
.end method
