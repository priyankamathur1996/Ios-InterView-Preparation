//
//  LazyKeyword.swift
//  Ios-InterView-Preparation
//
//  Created by Priyanka Mathur on 28/08/24.
//

import Foundation
/*
lazy property
In Swift, a lazy property is a property that is only initialized when it's first accessed. The lazy keyword is used to declare a lazy property.

Example:

class MyClass {
    lazy var myProperty: String = {
        print("Initializing myProperty")
        return "Hello, World!"
    }()
}

In this example, myProperty is only initialized when it's first accessed, and the closure is only executed once.

Drawbacks of lazy properties:

1. Performance overhead: Lazy properties can introduce a small performance overhead due to the additional indirection.
2. Thread-safety issues: Lazy properties can lead to thread-safety issues if accessed from multiple threads simultaneously.
3. Debugging difficulties: Lazy properties can make debugging more challenging since the initialization is delayed.
4. Unpredictable behavior: If the lazy property's closure has side effects, it can lead to unpredictable behavior.
5. Memory leaks: If the lazy property holds a strong reference to the enclosing class, it can cause memory leaks.
6. Limited control over initialization: Lazy properties can make it harder to control the initialization process.
7. Testing complexities: Lazy properties can make unit testing more complicated due to the delayed initialization.

Best practices:

1. Use lazy properties sparingly and only when necessary.
2. Ensure thread-safety when accessing lazy properties from multiple threads.
3. Avoid side effects in lazy property closures.
4. Use weak references to avoid memory leaks.
5. Consider alternative approaches, like dependency injection or computed properties, when possible.

By understanding the drawbacks and best practices, you can effectively use lazy properties in your Swift code.
*/



/*
Here are the answers to the interview questions about the lazy keyword in Swift:

1. What is the purpose of the lazy keyword in Swift?

The purpose of the lazy keyword is to declare a property that should only be initialized when it's first accessed, rather than when the instance is created.

1. How does the lazy keyword affect the initialization of a property?

The lazy keyword affects the initialization of a property by delaying its initialization until the property is first accessed. This means that the property's initialization code is only executed when the property is first used.

1. Can you give an example of a scenario where using lazy would be beneficial?

Using lazy would be beneficial when a property requires an expensive computation or resource allocation to initialize, but is not always needed. For example, a complex calculation or a large data structure that's only needed occasionally.

1. How does lazy interact with other access modifiers like private or internal?

The lazy keyword can be combined with other access modifiers like private or internal. The access modifier controls who can access the property, while lazy controls when the property is initialized.

1. Can you declare a lazy property as let or only var?

You can declare a lazy property as either var or let, but let requires the property to be initialized with a closure.

1. How does lazy work with computed properties?

lazy cannot be used with computed properties, as computed properties are evaluated each time they're accessed and don't store a value.

1. Can you use lazy with static properties?

Yes, you can use lazy with static properties, which means the property will only be initialized when it's first accessed, rather than when the type is loaded.

1. What happens if you try to access a lazy property before it's initialized?

If you try to access a lazy property before it's initialized, the property's initialization code will be executed, and the property will be initialized.

1. How does lazy affect performance and memory usage?

lazy can improve performance by delaying expensive computations or resource allocation until they're needed. It can also reduce memory usage by only allocating resources when they're needed.

1. Can you give an example of a potential pitfall or gotcha when using lazy properties?

A potential pitfall is that lazy properties can lead to unexpected behavior if not properly synchronized in multithreaded environments.

1. How does lazy work with optional properties?

lazy can be used with optional properties, which means the property will only be initialized when it's first accessed, and will be nil until then.

1. Can you use lazy with properties that have default values?

Yes, you can use lazy with properties that have default values, but the default value will be ignored, and the property will be initialized with the lazy closure.

1. What's the difference between lazy and a regular property with a custom getter?

A lazy property is only initialized once, while a custom getter can be executed each time the property is accessed.

1. Can you use lazy with properties that are dependent on other properties?

Yes, you can use lazy with properties that are dependent on other properties, but be aware that the dependent properties may not be initialized yet.

1. How does lazy work with inheritance and subclassing?

lazy properties are inherited by subclasses, but the initialization code is only executed when the property is first accessed in the subclass.
*/

/*
In Swift, you can declare a lazy property as either var or let, but there's a catch when using let.

When declaring a lazy property as let, you must initialize it with a closure, like this:


class MyClass {
    lazy let myLazyProperty: String = {
        // Initialize the property here
        return "Hello, World!"
    }()
}

Note.* By using an enclosing closure, Swift ensures that the property is initialized lazily, thread-safely, and only once.
 
Notice the () at the end of the closure. This is required to indicate that the closure should be executed immediately when the property is first accessed.

If you try to declare a lazy let property without a closure, like this:


class MyClass {
    lazy let myLazyProperty: String = "Hello, World!"
}


You'll get a compiler error: "Lazy must be a mutable variable, i.e. 'var'."

On the other hand, when declaring a lazy property as var, you can initialize it with a simple value, like this:


class MyClass {
    lazy var myLazyProperty: String = "Hello, World!"
}


In this case, the property will still only be initialized when it's first accessed, but you can also reassign its value later if needed.

So, to summarize:

- lazy let requires a closure and can't be reassigned.
- lazy var can be initialized with a simple value and can be reassigned later.
*/
